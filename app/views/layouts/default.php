<!--
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
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
    	<title><?php echo $title_for_layout; ?></title>
		<meta name="generator" content="flavorPHP" />
        <?php echo $this->html->charsetTag("UTF-8"); ?>
 		<?php echo $this->html->includeCss("style"); ?>
		<?php echo $this->html->includeJs("script"); ?>
	</head>
    <body>
	<div id="wrapper">
		<div id="header">
			<h1>Come en Colima</h1>
		</div>
        <div id="content">
			<div id="menu">
				<ul type="square">
					<li><?php echo $this->html->linkTo("Iniciar Sesi&oacute;n","index/login"); ?></li>
					<li><?php echo $this->html->linkTo("Crear una Cuenta","index/registro");   ?></li>
					<li><?php echo $this->html->linkTo("Cerrar Sesi&oacute;n","index/logout"); ?></li>
				</ul>
			</div>
			<div id="mainContent">
            	<?php echo $content_for_layout ?>
        	</div>
		</div>
	</div>
    </body>
</html>