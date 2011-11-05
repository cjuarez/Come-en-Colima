<?php $userLoggedIn = isset($_SESSION['idUser']); ?>
<ul>
	<li><?php echo $this->html->linkTo("Inicio","index"); 				?></li>
	<?php echo ($userLoggedIn)  ? "<li>".$this->html->linkTo("Panel de Control","dashboard/")		."</li>" : ""; ?>
	<?php echo (!$userLoggedIn) ? "<li>".$this->html->linkTo("Iniciar Sesi&oacute;n","index/login")	."</li>" : ""; ?>
	<li><?php echo $this->html->linkTo("Acerca de Nosotros","about");	?></li>
	<li><?php echo $this->html->linkTo("Restaurantes","restaurantes"); 	?></li>
	<?php echo (!$userLoggedIn) ? "<li>".$this->html->linkTo("Crear Cuenta","index/registro")		."</li>" : ""; ?>
	<?php echo ($userLoggedIn)  ? "<li>".$this->html->linkTo("Cerrar Sesi&oacute;n","index/logout")	."</li>" : ""; ?>
</ul>