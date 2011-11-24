<div id="restaurant">
	<div id="left">
		
		<?php
		echo $this->html->imagePars($image,"width=\"200\" onerror=\"this.src='$imageIfError';\"");
		 ?>
	</div>
	<div id="right">
		<h3><?php echo $restaurant["restaurant"]; ?></h3>
		<strong><?php echo $restaurant["type"]; ?></strong><br/><br/>
		<strong>Teléfono:</strong> <?php echo $restaurant["telephone"]; ?><br/><br/>
		<strong>Dirección:</strong><?php echo $restaurant["address"]; ?><br/><br/>
	</div>
	<div class="clear">
	</div>
</div>
<?php echo $this->html->form("dashboard/hacerPedido/$idRestaurant","POST","name=\"pedido\""); ?>
<table id="food-menu">
<tr>
	<?php echo (isset($_SESSION["idClient"])) ? "<th>Seleccionar</th>" : "" ?>
	<th>Platillo</th>
	<th>Precio</th>
</tr>
<?php 
$categoria = "";
if (count($menu) == 0) { ?>
	<tr>
		<td colspan="3">Este restaurante no ha puesto un menú aún</td>
	</tr>
<?php } else {
	foreach ($menu as $key => $dish) { 
	if ($categoria != $dish["category"]) {
		$categoria = $dish["category"]; ?>
		<tr>
			<th colspan="3"><?php echo $categoria ?></th>
		</tr>
	<?php } ?>
	<tr>
		<?php echo (isset($_SESSION["idClient"])) ? "<td>".$this->html->checkBox($dish["idDish"]) . "</td>" : "" ?>
		<td><?php echo $this->html->linkTo($dish["dish"],"platillo/".$dish["idDish"]); ?></td>
		<td><?php echo "$" . $dish["price"]; ?></td>
	</tr>
<?php }
} ?>
</table>
<?php echo (isset($_SESSION["idClient"])) ? '<button type="submit" value="Realizar Pedido"> Realizar Pedido </button>' : "" ?>
</form>
<br/>
<div id="comments">
	<div id="previousComments">
		<?php
		if (count($comments) == 0) { ?>
			<div id="comentario">
				No hay comentarios todavía.
			</div>
		<?php } else {
		foreach ($comments as $key => $comment): ?>
			<div id="comentario" <?php echo ($comment["idUser"]==0) ? "style=\"background-color:#CBD0C8\"" : ""; ?>>
				<div id="usuario">		<?php echo ($comment["idUser"]!=0) ? $comment["username"] : $restaurant["restaurant"]; ?> dijo:</div>
				<div id="commentText">	<?php echo $comment["comment"] 		?></div>
				<div id="timestamp">	<?php echo $this->format_date($comment["timestamp"],"spanish");	?></div>
			</div>
		<?php endforeach;
		} ?>
	</div>
	<?php if (isset($_SESSION["idClient"]) || ($_SESSION["idRestaurant"] == $idRestaurant)): ?>
		<?php echo $this->html->form("restaurantes/commentRestaurant/".$restaurant["idRestaurant"]); ?>
			<label for="comment">Comentario:</label>
			<input type="hidden" name="idRestaurant" value="<?php echo $restaurant["idRestaurant"]; ?>">
			<div id="newComment">
				<textarea id="comment" cols="50" rows="10" name="comment"></textarea>
			</div>
			<input type="submit" id="btnComentar" value="Comentar">
		</form>
		<?php echo $this->renderElement("scoring"); ?>
	<?php elseif (!isset($_SESSION["idUser"])): ?>
		<?php echo $this->html->linkTo("Para hacer comentarios necesitas una cuenta.","index/registro"); ?>
	<?php endif ?>
</div>