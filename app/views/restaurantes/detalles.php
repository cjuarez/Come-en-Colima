<div id="restaurant">
	<div id="left">
		
		<?php $image = "restaurantes/" . $restaurant["idRestaurant"] . "." . $restaurant["image"];
		$imageIfError = Path."/app/views/images/restaurant_unavailable.jpg";
		echo $this->html->imagePars($image,"width=\"200\" onerror=\"this.src='$imageIfError';\"");
		 ?>
	</div>
	<div id="right">
		<h3>Jashi Sushi</h3>
		<h4>Comida Oriental</h4>
		<h4>Tel: 3123131</h4>
		<h4>Av. Gonzalo de Sandoval #396</h4>
	</div>
	<div id="masInfo">
	</div>
</div>
<?php echo $this->html->form("dashboard/hacerPedido/$idRestaurant","POST","name=\"pedido\""); ?>
<table id="food-menu">
<tr>
	<?php echo (isset($_SESSION["idUser"])) ? "<th>Seleccionar</th>" : "" ?>
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
		<?php echo (isset($_SESSION["idUser"])) ? "<td>".$this->html->checkBox($dish["idDish"]) . "</td>" : "" ?>
		<td><?php echo $this->html->linkTo($dish["dish"],"platillo/".$dish["idDish"]); ?></td>
		<td><?php echo "$" . $dish["price"]; ?></td>
	</tr>
<?php } ?>
</table>
<button type="submit" value="Realizar Pedido"> Realizar Pedido </button>
</form>
<br/>
<div id="comments">
	<div id="previousComments">
	<div id="comment">
		
	</div>
	</div>
	<label for="comentario">Comentario:</label>
	<div id="newComment">
		<textarea id="comentario" cols="80" rows="10" name="">
		</textarea>
	</div>
	<input type="button" name="btnEnviar" value="Enviar" onclick="">
</div>

