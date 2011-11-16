<?php echo $this->html->form("dashboard/completarPedido", "POST"); ?>
<table id="cuenta">
	<thead>
		<tr>
			<td>Platillo</td>
			<td>Precio Unitario</td>
			<td>Cantidad</td>
			<td>Precio Total</td>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($platillos as $key => $platillo): ?>
			<tr>
				<?php $idDish = $platillo["idDish"]; ?>
				<td><?php echo $platillo["dish"]; ?></td>
				<td><span id="precio<?php echo $idDish; ?>"><?php echo $platillo["price"]; ?></span></td>
				<td><?php echo $this->html->textField("$idDish", "value=\"1\" onkeyup=\"calculateSubtotal($idDish);\""); ?></td>
				<td><span class="subtotales" id="subtotal<?php echo $idDish; ?>"></span></td>
			</tr>
		<?php endforeach ?>
		<tr>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td></td>
			<td></td>
			<td>Total:</td>
			<td><span id="total"></span></td>
		</tr>
	</tfoot>
</table>
<input type="hidden" name="idRestaurant" value="<?php echo $idRestaurant; ?>">
<button type="submit" value="Confirmar el Pedido"> Confirmar el Pedido </button>
</form>
<script type="text/javascript" charset="utf-8">
window.onload = function () {
	var cuenta = document.getElementById('cuenta');
	var spans = cuenta.getElementsByTagName("span");
	var substr;
	for (i = 0; i<spans.length; i++){
		if (spans[i].className == "subtotales") {
			substr = spans[i].id;
			substr = substr.substring(8,substr.length);
			calculateSubtotal(substr);
		}
	}
}
</script>