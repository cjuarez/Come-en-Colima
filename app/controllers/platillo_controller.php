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
	}
?>