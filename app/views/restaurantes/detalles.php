<div id="restaurant">
	<div id="left">
		<?php //echo $this->html->imagePars($restaurant['logo'].".jpg",'width="100px"'); ?>
		<img src="http://2.bp.blogspot.com/_5QkmVki3PDY/TOhbnO7TbTI/AAAAAAAAAAU/5oB6cCFnFE8/S660/LOGO%2BMODIFICADO.jpg" alt=""/>
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
	<div id="comment">
		<p>Cliente 1 escribió:<br/>
		Mal restaurante, mal servicio.<br/>
		El 22 de septiembre a las 12:03 am
	</div>
	<div id="newComment">
		<textarea cols="100" rows="10" name="">
			Me gusta este restaurante, pero deberian poner más mesas
		</textarea>
	</div>
	<input type="button" name="btnEnviar" value="Enviar" onclick="">
</div>

