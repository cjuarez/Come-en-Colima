<?php header( 'Content-type: text/html; charset=iso-8859-1' );?>
<div id="busqueda">
	<input type="text" class="login" name="buscar" /> <input type="button" name="btnBuscar" value="Buscar"> 
</div>
<div id="listado">
	<?php 
	foreach ($restaurantes as $key => $restaurant) { ?>
		<div class="restaurant">
			<div class="left">
				<?php
					 
					echo $this->html->imagePars($restaurant['logo'],"alt=\"logo\" width=\"100\" onerror=\"this.src='$imageIfError'\""); 
				?>
			</div>
			<div class="right">
				<h3><?php echo $restaurant["restaurant"]; ?></h3>
				<h4><?php echo $restaurant["type"]; ?></h4>
				<h4><?php echo $this->html->linkTo("Ver Detalles", "restaurantes/detalles/".$restaurant['idRestaurant']); ?></h4>
			</div>
			<div class="masInfo">
			</div>
		</div>
	<?php } ?>
</div>