<?php
	class dashboard_controller extends appcontroller { 
		private $_menuRestaurant = array(
			array ("Editar Datos de Restaurante","dashboard/editarRestaurante"),
			array ("Editar el Men&uacute;","dashboard/editarMenu"),
			array ("Pedidos Recibidos","dashboard/misPedidos")
		);
		
		private $_menuClient = array(
			array ("Editar Datos Personales","dashboard/editarDatos"),
			array ("Pedidos Hechos","dashboard/misPedidos")
		);
		
		public function __construct() {
			parent::__construct();
		}
		
		public function index ($id=null) {
			if ($_SESSION["userType"] == "restaurant") {
				$this->restaurantDashboard();
			} else {
				$this->clientDashboard();
			}
			$this->render();
		}
		
		public function restaurantDashboard($id = null) {
			$this->view->menu = $this->_menuRestaurant;
		}
		
		public function clientDashboard($id = null) {
			$this->view->menu = $this->_menuClient;
		}
		
		public function editarDatos($id = null) {
			$this->view->menu = $this->_menuClient;
			$cliente = new client();
			if ($this->data) {
				$cliente->find($_SESSION["idClient"]);
				$cliente->prepareFromArray($this->data);
				$cliente->save();
			}
			$this->view->cliente = $cliente->find($_SESSION["idClient"]);
			$this->render();
		}
		
		public function misPedidos($id = null) {
			$this->view->menu = $this->_menuClient;
			$pedido = new bill();
			$this->view->pedidos = $pedido->findAllBySql("SELECT * 
														FROM (
															SELECT bills.*,restaurants.restaurant 
															FROM bills 
															INNER JOIN restaurants 
															ON bills.idRestaurant = restaurants.idRestaurant
															) as bills
														INNER JOIN (
															SELECT dishes.dish,dishes.price,billItems.idBill 
															FROM billItems 
															INNER JOIN dishes 
															ON billItems.idDish=dishes.idDish
															) as dishes
														ON bills.idBill = dishes.idBill
														ORDER BY bills.idBill");
			$this->render();
		}
		
		public function editarRestaurante($id = null) {
			$this->view->menu = $this->_menuRestaurant;
			$restaurant = new restaurant();
			if ($this->data) {
				$restaurant->find($_SESSION["idRestaurant"]);
				$restaurant->prepareFromArray($this->data);
				$restaurant->save();
			}
			$tipo = new type();
			$this->view->tipos = $tipo->findAll();
			$this->view->restaurante = $restaurant->find($_SESSION["idRestaurant"]);
			$this->render();
		}
	}
?>