<table id="food-menu">
<tr>
	<th>Platillo</th>
	<th>Precio</th>
</tr>
<?php 
$categoria = "";
foreach ($menu as $key => $dish) { 
	if ($categoria != $dish["category"]) {
		$categoria = $dish["category"]; ?>
		<tr>
			<th colspan="2"><?php echo $categoria ?></th>
		</tr>
	<?php } ?>
	<tr>
		<td><?php echo $this->html->linkTo($dish["dish"],"platillo/".$dish["idDish"]); ?></td>
		<td><?php echo "$" . $dish["price"]; ?></td>
	</tr>
<?php } ?>
</table>