<?php
	class restaurantes_controller extends appcontroller { 
		public function __construct() {
			parent::__construct();
		}
		
		public function index ($order=null) {
			$restaurant = new restaurant();
			$orderBy = "";
			if ($order!=null) {
				if ($order == "tipo") {
					$orderBy = " ORDER BY type"; 
				} elseif ($order == "nombre") {
					$orderBy = " ORDER BY restaurant";
				}
			}
			$restaurantes = $restaurant->findAllBySql("SELECT * FROM  
																		restaurants 
																	INNER JOIN 
																		types 
																	ON restaurants.idType = types.idType$orderBy");
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
														WHERE restaurants.idRestaurant = 12");
				$this->view->restaurant = $restaurant;
				$this->view->image = "restaurantes/" . $restaurant["idRestaurant"] . "." . $restaurant["image"];
				$this->view->imageIfError = Path."/app/views/images/restaurant_unavailable.jpg";
				$scoreRestaurant = new restaurantscore();
				$score = $scoreRestaurant->findBySql("SELECT score
													FROM restaurantscores
													WHERE idRestaurant = $id
													AND idClient = " . $_SESSION["idClient"]);
				$this->view->initialScore = ($score["score"]!="") ? $score["score"] : 0;
				$this->view->scoreUrl = "../../scoreRestaurant/$id,";
				$this->render();
			} else {
				$this->redirect("restaurantes");
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