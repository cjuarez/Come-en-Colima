<?php
	class acerca_controller extends appcontroller { 
		public function __construct() {
			parent::__construct();
		}
		
		public function index ($id=null) {
      		$this->render();
		}
	}
?>