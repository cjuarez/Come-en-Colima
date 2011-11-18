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
			$idClient = $_SESSION["idClient"];
			$pedidos = $pedido->findAllBySql("SELECT bills.idBill, restaurant, bills.timestamp, bills.idRestaurant, bills.idClient, bills.specialNote, bills.served, dish, count(dish) as cantidad, sum(price) as price 
												FROM (
														SELECT bills.*,restaurants.restaurant 
														FROM bills 
														INNER JOIN restaurants 
														ON bills.idRestaurant = restaurants.idRestaurant
													) as bills
													INNER JOIN (
														SELECT dishes.dish,dishes.price,billitems.idBill 
														FROM billitems 
														INNER JOIN dishes 
														ON billitems.idDish=dishes.idDish
													) as dishes
													ON bills.idBill = dishes.idBill
													WHERE bills.idClient = $idClient
													GROUP BY dish
													ORDER BY bills.idBill");
			
			foreach ($pedidos as $key => &$p) {
				$pedido->find($p["idBill"]);
				$p["total"] = $pedido->getTotal();
			}
			$this->view->pedidos = $pedidos;
			$this->render();
		}
		
		//Dashboard para restaurantes
		public function editarRestaurante($id = null) {
			$this->view->menu = $this->_menuRestaurant;
			$restaurant = new restaurant();
			if ($this->data) {
				$data = array(
					"restaurant" 	=> $this->data["restaurant"],
					"address" 		=> $this->data["address"],
					"city" 			=> $this->data["city"],
					"cp"			=> $this->data["cp"],
					"telephone"		=> $this->data["telephone"],
					"idType"		=> $this->data["idType"]
				);
				$restaurant->find($_SESSION["idRestaurant"]);
				$restaurant->prepareFromArray($data);
				$nombre_archivo = $_FILES['logo']['name'];
				$elementosNombre = explode(".",$nombre_archivo);
				$extension_archivo = $elementosNombre[1];
				$tipo_archivo = $_FILES['logo']['type']; 
				$tamano_archivo = $_FILES['logo']['size']; 
if (!(($extension_archivo=="gif"||$extension_archivo=="jpeg"||$extension_archivo=="jpg"||$extension_archivo=="png")&&($tamano_archivo<3145729))) { echo "La extensión o el tamaño de los archivos no es correcta."; 
} else {
if (move_uploaded_file($_FILES['logo']['tmp_name'],getcwd(). "/app/views/images/restaurantes/".$restaurant->idRestaurant.".".$extension_archivo)){ 
} else { 
echo "Ocurrió algún error al subir el fichero. No pudo guardarse."; 
} 
}
				$restaurant->image = $extension_archivo;
				$restaurant->save();
			}
			$tipo = new type();
			$this->view->tipos = $tipo->findAll();
			$restaurante = $restaurant->find($_SESSION["idRestaurant"]);
			$restaurante["logo"] = "restaurantes/" . $restaurante["idRestaurant"] . "." . $restaurante["image"];
			$this->view->imageIfError = Path . "/app/views/images/restaurant_unavailable.jpg";
			$this->view->restaurante = $restaurante;
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
			$this->view->menu = $this->_menuRestaurant;
			$pedido = new bill();
			$idRestaurant = $_SESSION["idRestaurant"];
			$pedidos = $pedido->findAllBySql("SELECT bills.idBill, client, bills.telephone, bills.address, bills.city, bills.cp, bills.timestamp, bills.idRestaurant, bills.idClient, bills.specialNote, bills.served, dish, count(dish) as cantidad, sum(price) as price 
											FROM (
												SELECT bills.*,CONCAT(clients.firstName,' ',clients.lastName) as client, telephone, address, city, cp
												FROM bills 
												INNER JOIN clients 
												ON bills.idClient = clients.idClient
											) as bills
											INNER JOIN (
												SELECT dishes.dish,dishes.price,billitems.idBill 
												FROM billitems 
												INNER JOIN dishes 
												ON billitems.idDish=dishes.idDish
											) as dishes
											ON bills.idBill = dishes.idBill
											WHERE bills.idRestaurant = $idRestaurant
											GROUP BY dish
											ORDER BY bills.idBill");
			
			foreach ($pedidos as $key => &$p) {
				$pedido->find($p["idBill"]);
				$p["total"] = $pedido->getTotal();
			}
			$this->view->pedidos = $pedidos;
			$this->render();
		}
		
		public function hacerPedido($id = null) {
			$this->view->menu = $this->_menuRestaurant;
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
			$this->view->menu = $this->_menuClient;
			if ($this->data){
				$cuenta = new bill();
				$datosCuenta = array(
					"idRestaurant" 	=> $this->data["idRestaurant"],
					"idClient" 		=> $_SESSION["idClient"],
					"specialNote"	=> $this->data["specialNote"],
					"timestamp"		=> date("Y-m-d H:i:s",strtotime("now"))
				);
				$cuenta->prepareFromArray($datosCuenta);
				$idCuenta = $cuenta->save();
				$this->view->cuenta = $cuenta;
				
				foreach ($this->data as $idDish => $cantidad) {
					if (is_numeric($idDish)) {
						for ($i=1; $i <= $cantidad; $i++) { 
							$elemento = new billitem();
							$datosElemento = array(
								"idBill" => $idCuenta,
								"idDish" => $idDish 
							);
							$elemento->prepareFromArray($datosElemento);
							$elemento->save();
						}
					}
				}
			}
		$this->render();
		}
		
	public function marcarComoAtendido($id=null){
		if ($id!=null) {
			$bill = new bill();
			$bill->find($id);
			$bill->served = 1;
			$bill->save();
		}
		$this->redirect("dashboard/pedidos");
	}
		
	}
?>