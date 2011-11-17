<?php header( 'Content-type: text/html; charset=iso-8859-1' );?>
<?php $this->renderElement("dashboard_menu"); ?>
<div id="subContent">
	<div id="listado">
		<?php
		for ($i=0; $i < count($pedidos); $i++) {
			$anteriorIdBill = (isset($pedidos[$i-1])) ? $pedidos[$i-1]["idBill"] : -1;
				if ($pedidos[$i]["idBill"]!=$anteriorIdBill){?>
					<div class="pedido">
						<div class="timestamp">
							<?php echo $pedidos[$i]["timestamp"]; ?>
						</div>
						<big class="cliente"><?php echo "Cliente: " . $pedidos[$i]["client"]; ?></big><br/>	
				<?php }
			 ?>
			<div class="item">
				<div class="left">
					<?php echo $pedidos[$i]["dish"]; ?>
				</div>
				<div class="center">
					X<?php echo $pedidos[$i]["cantidad"]; ?>
				</div>
				<div class="right"><?php echo $pedidos[$i]["price"]; ?></div>
				<div id="clear"></div>
			</div>
			<?php
			$siguienteIdBill = (isset($pedidos[$i+1])) ? $pedidos[$i+1]["idBill"] : -1;
			if ($pedidos[$i]["idBill"]!=$siguienteIdBill) { ?>
				<div class="total"><big><?php echo "Total: $" . $pedidos[$i]["total"]; ?></big></div>
				<big class="titulo"> Datos de Ciente: </big>
				<div class="notas">
					<div class="left">
						<strong>Nombre:</br>
						Tel&eacute;fono:<br/>
						Direcci&oacute;n:<br/>
						Ciudad:<br/>
						CP:</strong>
					</div>
					<div class="right">
						<?php echo $pedidos[$i]["client"]; ?><br/>
						<?php echo $pedidos[$i]["telephone"]; ?><br/>
						<?php echo $pedidos[$i]["address"]; ?><br/>
						<?php echo $pedidos[$i]["city"]; ?><br/>
						<?php echo $pedidos[$i]["cp"]; ?><br/>
					</div>
					<div id="clear">
					</div>
				</div>
				<big class="titulo"> Notas: </big>
				<div class="notas">
					<?php echo $pedidos[$i]["specialNote"]; ?>
				</div>
				<div class="atendido">
					<?php echo($pedidos[$i]["served"]>0) ? '<big>Atendido</big>' : '<big class="alert">En espera</big>'; ?>
				</div>
				<button type="button" value="Marcar como Atendido" onclick="window.location = '<?php echo Path . "dashboard/marcarComoAtendido/". $pedidos[$i]["idBill"]; ?>'">Marcar como Atendido</button>
			</div>
		<?php	}
		} ?>
	</div>
</div>