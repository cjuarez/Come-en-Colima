<?php
	class registro_controller extends appcontroller {
		
		public function __construct() {
			parent::__construct();
			$this->title_for_layout("");
			//$this->view->setLayout("");
		}
		
		public function index($id = null) {
			$this->view->titulo = "Registro";
			$this->render();
		}
	}
?>