
<?php $this->renderElement("dashboard_menu"); ?>
<div id="subContent">
	<div id="listado">
		<?php

		for ($i=0; $i < count($pedidos); $i++) {
			$anteriorIdBill = (isset($pedidos[$i-1])) ? $pedidos[$i-1]["idBill"] : -1;
				if ($pedidos[$i]["idBill"]!=$anteriorIdBill){?>
					<div class="pedido">
						<div class="timestamp">
							<?php echo $this->format_date($pedidos[$i]["timestamp"],"spanish"); ?>
						</div>
						<big class="restaurante"><?php echo "Restaurante: " . $pedidos[$i]["restaurant"]; ?></big><br/>	
				<?php }
			 ?>
			<div class="item">
				<div class="left">
					<?php echo $pedidos[$i]["dish"]; ?>
				</div>
				<div class="center">
					X <?php echo $pedidos[$i]["cantidad"]; ?>
				</div>
				<div class="right">$<?php echo $pedidos[$i]["price"]; ?></div>
				<div class="clear"></div>
			</div>
			<?php
			$siguienteIdBill = (isset($pedidos[$i+1])) ? $pedidos[$i+1]["idBill"] : -1;
			if ($pedidos[$i]["idBill"]!=$siguienteIdBill) { ?>
				<div class="total"><big><?php echo "Total: $" . $pedidos[$i]["total"]; ?></big></div>
				<big class="titulo"> Notas: </big>
				<div class="notas">
					<?php echo $pedidos[$i]["specialNote"]; ?>
				</div>
				<div class="atendido">
					<?php echo($pedidos[$i]["served"]>0) ? '<big>Atendido</big>' : '<big class="alert">En espera</big>'; ?>
				</div>
			</div>
		<?php	}
		} ?>
	</div>
</div>