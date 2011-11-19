<?php
	class index_controller extends appcontroller { 
		public function __construct() {
			parent::__construct();
		}
		
		public function index ($id=null) {
			
      		$this->render();
		}
		
		public function registro($id = null) {
			$this->isLoggedIn();
			$this->view->titulo = "Registro";
			$tipo = new type();
			$this->view->tipos = $tipo->findAll();
			$this->render();
		}
		
		public function login($id = null) {
			$this->isLoggedIn();
			if ($this->data != NULL){
				$user = new user();
				$auth = $user->identifyUser($this->data["username"],$this->data["password"]);
				if ($auth!=false) {
					$_SESSION["idUser"]	  = $auth["idUser"];
					$_SESSION["userType"] = (isset($auth["idRestaurant"])) ? "restaurant" : "client";
					$_SESSION["idClient"] = $auth["idClient"];
					$_SESSION["idRestaurant"] = $auth["idRestaurant"];
					$this->redirect("index");
				} 
			}
			if ($this->detect_mobile()){
				$this->view->setLayout("mobile");
			} else {
				$this->render();
			}
		}
		
		public function logout($id = null){
			$_SESSION = null;
			$this->redirect("index/login");
		}
		
		public function register($id = null) {
			if ($this->data){
			$user = new user();
			$idUser = $user->registerUser($this->data["username"],$this->data["password"]);
			if ($this->data["tipoDeUsuario"] == "1") {
				$datosRestaurant = array(
					"restaurant" => $this->data["restaurant"],
					"address" => $this->data["address"],
					"city" => $this->data["city"],
					"cp" => $this->data["cp"],
					"telephone" => $this->data["telephone"],
					"idType" => $this->data["idType"],
					"city" => $this->data["city"],
					"idUser" => $idUser
				);
				$restaurant = new restaurant();
				$restaurant->prepareFromArray($datosRestaurant);
				$idRestaurant = $restaurant->save();
				if ($_FILES['logo']['size']>0){
					$nombre_archivo = $_FILES['logo']['name'];
					$elementosNombre = explode(".",$nombre_archivo);
					$extension_archivo = $elementosNombre[1];
					$tipo_archivo = $_FILES['logo']['type']; 
					$tamano_archivo = $_FILES['logo']['size']; 
					if (!(($extension_archivo == "gif" || $extension_archivo == "jpeg" || $extension_archivo == "jpg" || $extension_archivo == "png") && ($tamano_archivo < 3145729))) { 
					   	echo "La extensión o el tamaño de los archivos no es correcta."; 
					} else {
						if (move_uploaded_file($_FILES['logo']['tmp_name'],getcwd(). "/app/views/images/restaurantes/".$idRestaurant.".".$extension_archivo)){ 
					   	} else { 
					      	 echo "Ocurrió algún error al subir el fichero. No pudo guardarse."; 
					   	} 
					}
					$restaurant->image = $extension_archivo;
					$restaurant->save();
				}
			} else {
				$datosCliente = array(
					"firstName" => $this->data["firstName"],
					"lastName" => $this->data["lastName"],
					"telephone" => $this->data["telephone"],
					"address" => $this->data["address"],
					"cp" => $this->data["cp"],
					"city" => $this->data["city"],
					"idUser" => $idUser
				);
				$client = new client();
				$client->prepareFromArray($datosCliente);
				$client->save();
			}
		} else {
			$this->redirect("index/registro");
		}
		$this->redirect("index");
		}
	
		private function isLoggedIn() {
			if (isset($_SESSION["idUser"])){
				$this->redirect("index");
			}
		}
		
		public function checkIfAvailable($username = null){
			if ($username=="" || $username == null) {
				echo "no disponible";
			} else {
				$usuario = new user();
				$usuarios = $usuario->findAllBy("username",$username);
				echo (count($usuarios)>0) ? "no disponible" : "disponible";
			}
		}
	}
?>