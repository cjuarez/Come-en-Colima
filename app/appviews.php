<?php
 /* ===========================

  FlavorPHP - because php should have a better taste
  homepage: http://www.flavorphp.com/
  git repository: https://github.com/Axloters/FlavorPHP

  FlavorPHP is a free software licensed under the MIT license
  Copyright (C) 2008 by Pedro Santana <contacto at pedrosantana dot mx>
  
  Team:
  	Pedro Santana
	Victor Bracco
	Victor de la Rocha
	Jorge Condom�
	Aaron Munguia

  =========================== */
?>
<?php

class appviews extends views {

	public function __construct() {
		parent::__construct();
	}
	
	function format_date($original='', $format="%m/%d/%Y") { 
	    $format = ($format=='date' ? "%m-%d-%Y" : $format);
		$format = ($format=='time' ? "%H:%M:%S" : $format);
		$format = ($format=='spanish' ? "%d/%m/%Y %H:%M" : $format); 
	    $format = ($format=='datetime' ? "%m-%d-%Y %H:%M:%S" : $format); 
	    $format = ($format=='mysql-date' ? "%Y-%m-%d" : $format); 
	    $format = ($format=='mysql-datetime' ? "%Y-%m-%d %H:%M:%S" : $format); 
	    return (!empty($original) ? strftime($format, strtotime($original)) : "" ); 
	}
}

?>