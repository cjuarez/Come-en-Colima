<?php
	class restaurantes_controller extends appcontroller { 
		public function __construct() {
			parent::__construct();
		}
		
		public function index ($page=null) {
			$restaurant = new restaurant();
						
			$count = $restaurant->findBySql("SELECT count(*) as total FROM restaurants");
			$maxPages = $count["total"];
			$this->view->currentPage = ($page!=null) ? $page : 1;
			$limit = 10;
			$this->view->maxPages = ceil($maxPages / $limit);
			$inicio = ($page!=null) ? $page*$limit-$limit : 0 ;
			$restaurantes = $restaurant->findAllBySql("SELECT * 
														FROM restaurants
														INNER JOIN types
														ON restaurants.idType = types.idType
														ORDER BY restaurant
														LIMIT $inicio,$limit");
			foreach ($restaurantes as $key => &$r) {
				$r["logo"] = "restaurantes/" . $r["idRestaurant"] . "." . $r["image"];
			}
			$this->view->imageIfError = Path . "/app/views/images/restaurant_unavailable.jpg";
			$this->view->restaurantes = $restaurantes;
			
			$tipo = new type();
			$this->view->tipos=$tipo->findAll("idType, type");
			$this->view->cps = $restaurant->findAll("DISTINCT cp");
			$this->render();
		}
		
		public function busqueda($page=null) {
			if ($this->data) {
				$term = $this->data["term"];
				$this->view->term = $term;				
				$restaurant = new restaurant();
				$limit = 10;
				$sql = "SELECT count(*) as total
						FROM restaurants
						WHERE restaurant LIKE '%$term%'";
				$count = $restaurant->findBySql($sql);
				$maxPages = $count["total"];
				$this->view->currentPage = ($page!=null) ? $page : 1;
				$this->view->maxPages = ceil($maxPages/$limit);	
				$inicio = ($page != null) ? $page*$limit-$limit : 0;
				$sql = "SELECT * 
						FROM restaurants
						INNER JOIN types
						ON restaurants.idType = types.idType
						WHERE restaurant LIKE '%$term%'
						ORDER BY restaurant
						LIMIT $inicio,$limit";
				$restaurantes = $restaurant->findAllBySql($sql);
				foreach ($restaurantes as $key => &$r) {
					$r["logo"] = "restaurantes/" . $r["idRestaurant"] . "." . $r["image"];
				}
				$this->view->imageIfError = Path . "/app/views/images/restaurant_unavailable.jpg";
				$this->view->restaurantes = $restaurantes;
				$tipo = new type();
				$this->view->tipos=$tipo->findAll("idType, type");
				$this->view->cps = $restaurant->findAll("DISTINCT cp");
	      		$this->render('index');
			} else {
				$this->redirect("index");
			}
			
			$restaurant = new restaurant();
			$count = $restaurant->findBySql("SELECT count(*) as total FROM restaurants");
			$maxPages = $count["total"];
			$this->view->currentPage = $page;
			$limit = 10;
			$this->view->maxPages = ceil($maxPages / $limit);
			$inicio = ($page!=null) ? $page*$limit-$limit : 0 ;
			$restaurantes = $restaurant->findAllBySql("SELECT * 
														FROM restaurants
														INNER JOIN types
														ON restaurants.idType = types.idType
														ORDER BY restaurant
														LIMIT $inicio,$limit");
			foreach ($restaurantes as $key => &$r) {
				$r["logo"] = "restaurantes/" . $r["idRestaurant"] . "." . $r["image"];
			}
			$this->view->imageIfError = Path . "/app/views/images/restaurant_unavailable.jpg";
			$this->view->restaurantes = $restaurantes;
			
			$tipo = new type();
			$this->view->tipos=$tipo->findAll("idType, type");
			$this->view->cps = $restaurant->findAll("DISTINCT cp");
      		$this->render();
		}
		
		public function detalles ($id=null) {
			if ($id!=null) {
				$this->view->idRestaurant = $id;
				$sql = "SELECT * 
						FROM (
							SELECT dishes.idDish, dishes.dish, dishes.price, dishes.image, categories.idRestaurant, categories.category
							FROM dishes
							INNER JOIN categories ON dishes.idCategory = categories.idCategory
							) AS D
						WHERE D.idRestaurant =$id
						ORDER BY category";
				$platillo = new dish();
				$this->view->menu = $platillo->findAllBySql($sql);
				
				$restaurante = new restaurant();
				$restaurant = $restaurante->findBySql("SELECT restaurants.*, types.type 
														FROM restaurants
														INNER JOIN types
														ON restaurants.idType=types.idType
														WHERE restaurants.idRestaurant = $id");
				$this->view->restaurant = $restaurant;
				$this->view->image = "restaurantes/" . $restaurant["idRestaurant"] . "." . $restaurant["image"];
				$this->view->imageIfError = Path."/app/views/images/restaurant_unavailable.jpg";
				if (isset($_SESSION["idClient"])) {
					$scoreRestaurant = new restaurantscore();
				$score = $scoreRestaurant->findBySql("SELECT score
													FROM restaurantscores
													WHERE idRestaurant = $id
													AND idClient = " . $_SESSION["idClient"]);
				$this->view->initialScore = ($score["score"]!="") ? $score["score"] : 0;
				$this->view->scoreUrl = Path."restaurantes/scoreRestaurant/$id,";
				}
				
				//comments
				$comment = new restaurantcomment();
				$comments = $comment->findAllBySql("SELECT users.username,C.* 
													FROM users 
													INNER JOIN (
														SELECT clients.idUser, restaurantcomments.comment,restaurantcomments.timestamp
														FROM restaurantcomments
														INNER JOIN clients
														ON restaurantcomments.idClient = clients.idClient
														WHERE restaurantcomments.idRestaurant =$id
													) as C
													ON C.idUser = users.idUser
													ORDER BY timestamp");
				$this->view->comments = $comments;
				
				$this->render();
			} else {
				$this->redirect("restaurantes");
			}
		}
		
		public function commentRestaurant($id=null){
			if ($this->data){
				$datos = array(
					"comment" 		=> $this->data["comment"],
					"idClient"		=> (isset($_SESSION["idClient"])) ? $_SESSION["idClient"] : '0',
					"idRestaurant"	=> $this->data["idRestaurant"],
					"timestamp"		=> date("Y-m-d H:i:s",strtotime("now"))
				);
				$comment = new restaurantcomment();
				$comment->prepareFromArray($datos);
				$comment->save();
				$this->redirect(($id!=null)?"restaurantes/detalles/$id":"restaurantes");
			}
	}
		
		public function scoreRestaurant($param = null){
			$params = explode(",", $param);
			if ($param!=null) {
				$id 	= $params[0];
				$score 	= $params[1];
				if ($score!=null and isset($_SESSION["idClient"])) {
					$scoreRestaurant = new restaurantscore();
					$sql = "SELECT * 
							FROM restaurantscores
							WHERE idRestaurant = $id
							AND idClient = " . $_SESSION["idClient"];
					$antiguos = $scoreRestaurant->findAllBySql($sql);
					if (count($antiguos)>0){
						$scoreRestaurant->findBySql($sql);
						$scoreRestaurant->score = $score;
						$scoreRestaurant->save();
					} else {
						$scoreRestaurant = new restaurantscore();
						$scoreRestaurant->score 		= $score;
						$scoreRestaurant->idRestaurant 	= $id;
						$scoreRestaurant->idClient		= $_SESSION["idClient"];
						$scoreRestaurant->save();
					}
					
				}
			}
		}
	}
?>