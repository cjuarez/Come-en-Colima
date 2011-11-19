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
<?php } ?>
</table>
<?php echo (isset($_SESSION["idClient"])) ? '<button type="submit" value="Realizar Pedido"> Realizar Pedido </button>' : "" ?>
</form>
<br/>
<?php echo $this->html->form("dashboard/commentRestaurant/".$restaurant["idRestaurant"],"POST","name=\"comentario\""); ?>

<div id="comments">
	<div id="previousComments">
		<div id="comentario"></div>
	</div>
	<label for="comment">Comentario:</label>
	<input type="hidden" name="idRestaurant" value="<?php echo $restaurant["idRestaurant"]; ?>">
	<div id="newComment">
		<textarea id="comment" cols="80" rows="10" name="comment"></textarea>
	</div>
	<input type="submit" id="btnComentar" value="Comentar">
</form>
</div>

