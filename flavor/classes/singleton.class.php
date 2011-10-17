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
	Jorge Condomí
	Aaron Munguia

  =========================== */
?>
<?php

class singleton {
	private static $instances = array();
	
	public static function getInstance($class) {
		if (!isset(self::$instances[$class])) {
			self::$instances[$class] = new $class();
		}
		return self::$instances[$class];
	}

	private final function __clone() {}
}
?>