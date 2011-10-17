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

// Create the interface for data management
interface data {
	
	public static function getInstance();	
	public function query($sql);
	public function buildArray($query, $assoc_ary = false);
	public function fetchRow();
	public function rowSeek($rowNum);
	public function lastId();
	public function nextId($table, $primary);
	public function numRows();
	public function affectedRows();
	public function sql_escape($msg);
	public function errorInfo($sql = '');
	public function close();
	
}
?>