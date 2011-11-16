<?php
	class dashboard_controller extends appcontroller { 
		private $_menuRestaurant = array(
			array ("Editar Datos de Restaurante","dashboard/editarRestaurante"),
			array ("Editar el Men&uacute;","dashboard/editarMenu"),
			array ("Pedidos Recibidos","dashboard/pedidos")
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
				$this->view->menu = $this->_menuRestaurant;
			} else {
				$this->view->menu = $this->_menuClient;
			}
			$this->render();
		}
		
		//Dashboard para Clientes
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
		
		//Dashboard para restaurantes
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
		
		public function editarMenu($id = null) {
			$this->view->menu = $this->_menuRestaurant;
			$dish = new dish();
			if ($id != null){
				if ($id=="platillo") {
					$this->view->add = true;
				} elseif ($id == "categoria") {
					$this->view->cat = true;
				} else {
					$this->view->dishAEditar = $dish->find($id);
				}
				$cat = new category();
				$this->view->categories = $cat->findAllBy("idRestaurant",$_SESSION["idRestaurant"]);
			}
			$sql = "SELECT dishes.*,categories.category,categories.idRestaurant 
					FROM dishes 
					INNER JOIN categories 
					ON dishes.idCategory=categories.idCategory
					WHERE idRestaurant=" . $_SESSION['idRestaurant'] . " ORDER BY dishes.idCategory";
			$this->view->platillos = $dish->findAllBySql($sql);
			$this->render();
		}
		
		public function editDish($id = null){
			if ($this->data){
				$dish = new dish();
				$dish->find($this->data["idDish"]);
				$dish->prepareFromArray($this->data);
				$dish->save();
			}
			$this->redirect("dashboard/editarMenu");
		}
		
		public function delDish($id = null){
			if ($id != null) {
				$dish = new dish();
				$dish->find($id);
				$dish->delete();
			}
			$this->redirect("dashboard/editarMenu");
		}
		
		public function addDish($id = null){
			if ($this->data){
				$dish = new dish();
				$dish->prepareFromArray($this->data);
				$dish->save();
			}
			$this->redirect("dashboard/editarMenu");
		}
		
		public function addCategory($id = null){
			if ($this->data){
				$cat = new category();
				$cat->prepareFromArray($this->data);
				$cat->save();
			}
			$this->redirect("dashboard/editarMenu");
		}
		
		public function pedidos($id = null) {
			$pedido = new bill();
		}
		
		public function hacerPedido($id = null) {
			if ($this->data) {
				$this->view->idRestaurant = $id;
				$platillo = new dish();
				$platillos = array();
				foreach ($this->data as $key => $on) {
					$platillos[] = $platillo->find($key);
				}
				$this->view->platillos = $platillos;
				$this->render();
			}
		}
		
		public function completarPedido($id = null) {
			if ($this->data){
				$cuenta = new bill();
				$elemento = new billitem();
				$this->data["idClient"] = $_SESSION["idClient"];
				var_dump($this->data);
				foreach ($this->data as $idDish => $cantidad) {
					
				}
			}
		}
		
	}
?>