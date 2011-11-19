<?php
	class platillo_controller extends appcontroller { 
		public function __construct() {
			parent::__construct();
		}
		
		public function index ($id=null) {
			if ($id==null) {
				$this->redirect("restaurantes");
			} else {
				$dish = new dish();
				$sql = "SELECT idDish, dish, price, D.image, description, category, restaurants.restaurant, address, city, cp, telephone, idType, idUser 
						FROM (
   							SELECT idDish, dish, price, image, description, categories.idCategory, category, idRestaurant
   							FROM dishes
   							INNER JOIN categories
   							ON dishes.idCategory = categories.idCategory
   							WHERE idDish=$id
						) as D
						INNER JOIN restaurants
						ON D.idRestaurant = restaurants.idRestaurant";
				$platillo = $dish->findBySql($sql);
				$this->view->dish = $platillo;
				$this->title_for_layout("Platillo: " . $platillo["dish"]);
				$scoreDish = new dishscore();
				$score = $scoreDish->findBySql("SELECT score
										FROM dishscores
										WHERE idDish = $id
										AND idClient = " . $_SESSION["idClient"]);
				$this->view->initialScore = ($score["score"]!="") ? $score["score"] : 0;
				$this->view->scoreUrl = "../scoreDish/$id,";
      			$this->render();				
			}
		}
		
		public function commentDish($id=null){
			if ($this->data){
				$datos = array(
					"comment" 	=> $this->data["comment"],
					"idClient"	=> $_SESSION["idClient"],
					"idDish"	=> $this->data["idDish"],
					"timestamp"	=> date("Y-m-d H:i:s",strtotime("now"))
				);
				$comment = new dishcomment();
				$comment->prepareFromArray($datos);
				$comment->save();
				$this->redirect(($id!=null)?"platillo/index/$id":"platillo");
			}
		}
		
		public function scoreDish($param = null){
			$params = explode(",", $param);
			if ($param!=null) {
				$id 	= $params[0];
				$score 	= $params[1];
				if ($score!=null and isset($_SESSION["idClient"])) {
					$scoreDish = new dishscore();
					$sql = "SELECT * 
							FROM dishscores
							WHERE idDish = $id
							AND idClient = " . $_SESSION["idClient"];
					$antiguos = $scoreDish->findAllBySql($sql);
					if (count($antiguos)>0){
						$scoreDish->findBySql($sql);
						$scoreDish->score = $score;
						$scoreDish->save();
					} else {
						$scoreDish = new dishscore();
						$scoreDish->score 	= $score;
						$scoreDish->idDish 	= $id;
						$scoreDish->idClient= $_SESSION["idClient"];
						$scoreDish->save();
					}
					
				}
			}
		}
	}
?>