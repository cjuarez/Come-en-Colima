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
			$this->view->restaurantes = $restaurant->findAllBySql("SELECT * FROM  
																		restaurants 
																	INNER JOIN 
																		types 
																	ON restaurants.idType = types.idType$orderBy");
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
				$this->render();
			} else {
				$this->redirect("restaurantes");
			}
		}
	}
?>