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
				$sql = "SELECT * 
						FROM dishes 
						INNER JOIN restaurants 
						ON dishes.idRestaurant = restaurants.idRestaurant 
						WHERE idDish=$id";
				$this->view->dish = $dish->findBySql($sql);
      			$this->render();				
			}
		}
	}
?>