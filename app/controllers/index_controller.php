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
				var_dump($this->data);
				$user = new user();
				$auth = $user->identifyUser($this->data["username"],$this->data["password"]);
				if ($auth!=false) {
					$_SESSION["idUser"]=$auth["idUser"];
					$this->redirect("index");
				} 
			}
			$this->render();
		}
		
		public function logout($id = null){
			$_SESSION = null;
			$this->redirect("index/login");
		}
		
		public function register($id = null) {
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
					"idUser" => $idUser,
					"logo" => $this->data["logo"]
				);
				$restaurant = new restaurant();
				$restaurant->prepareFromArray($datosRestaurant);
				$restaurant->save();
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
			$this->redirect("index");
		}
	
		private function isLoggedIn() {
			if (isset($_SESSION["idUser"])){
				$this->redirect("index");
			}
		}
	}
?>