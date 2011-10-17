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

class ajax {
	
	protected $registry;
	protected $path;
	
	public function __construct() {
		$this->registry = registry::getInstance();
		$this->path = $this->registry["path"];
	}
	
	public function linkToBox($text, $url="", $html_attributes="", $absolute=false) {
		$var = ($absolute) ? "" : $this->path;
		$html = "<a href=\"".$var.$url;
		$html .= "\" rel=\"facebox\"";		
		$html .= " $html_attributes ";		
		$html .= ">".$text."</a>";		
		return $html;
	}
	
	public function imageLinkToBox($text, $url="#", $html_attributes="", $name, $alt=""){
		if (!is_file($url)) {
			$url = (substr($url,-1,1)!="/")?$url."/":$url;
		}
		$html = "<a href=\"".$this->path.$url;
		$html .= "\" rel=\"facebox\"";
		$html .= " $html_attributes ";
		$html .= ">";
		$html .= "<img src=\"".$this->path.APPDIR."/views/images/".$name."\" alt=\"".$alt."\" title=\"".$alt."\" />".$text;
		$html .= "</a>";
		return $html;
	}
	
}
?>