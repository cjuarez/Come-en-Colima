<?php $this->renderElement("dashboard_menu"); ?>
<div id="subContent">
	<h1>Pedido realizado con éxito</h1>
	<p>Tu pedido se registró con éxito <?php echo $cuenta["timestamp"]; ?>
		Actualmente el pedido se encuentra marcado como <?php echo ($cuenta["served"]==0) ? "EN ESPERA" : "ATENDIDO" ?></p>
	<p><?php echo $this->html->linkTo("Haz clic aquí para ir al listado de tus pedidos.","dashboard/misPedidos"); ?></p>
</div>