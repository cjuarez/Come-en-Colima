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
				
				$restaurant = new restaurant();
				$this->view->restaurant = $restaurant->find($id);
				$this->render();
			} else {
				$this->redirect("restaurantes");
			}
		}
	}
?>