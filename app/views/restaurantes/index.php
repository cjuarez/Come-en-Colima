<table border="0" width="100%" cellpadding="0" cellspacing="0">
<tr>
	<th>No.</th>
	<th>Nombre</th>
	<th>Tipo</th>
	<th>Opciones</th>
</tr>
	<?php 
	$i = 1;
	foreach ($restaurantes as $key => $restaurant) { ?>
		<tr>
			<td><?php echo $this->html->image($restaurant['logo']); ?></td>
			<td><?php echo $restaurant["restaurant"]; ?></td>
			<td><?php echo $restaurant["type"]; ?></td>
			<td><?php echo $this->html->linkTo("Ver Detalles", "restaurantes/detalles/".$restaurant['idRestaurant']); ?></td>
		</tr>
	<?php } ?>
</table>