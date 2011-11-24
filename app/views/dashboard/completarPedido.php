<?php $this->renderElement("dashboard_menu"); ?>
<div id="subContent">
	<h1>Pedido realizado con éxito</h1>
	<p>Tu pedido se registró con éxito el día <?php echo $this->format_date($cuenta["timestamp"]); ?> a las <?php echo $this->format_date($cuenta["timestamp"],"time"); ?>
		Actualmente el pedido se encuentra marcado como <?php echo ($cuenta["served"]==0) ? "EN ESPERA" : "ATENDIDO" ?></p>
	<p><?php echo $this->html->linkTo("Haz clic aquí para ir al listado de tus pedidos.","dashboard/misPedidos"); ?></p>
</div>