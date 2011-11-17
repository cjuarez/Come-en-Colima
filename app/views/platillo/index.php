<div id="platillo">
	<h3><?php echo $dish["dish"]; ?></h3>
	<?php
		$image = "platillos/".$dish["idDish"].".".$dish["image"];
		$imageIfError = Path."/app/views/images/food_unavailable.gif";
		echo $this->html->imagePars($image,"width=\"400\" onerror=\"this.src='$imageIfError';\""); 
	?>
	<h4>Donde encontrarlo: </h4><?php echo $dish["restaurant"]; ?>
	<h4>Precio:           </h4>$<?php echo $dish["price"]; ?>
	<h4>Descripcion:</h4> <p><?php echo $dish["description"]; ?></p>
</div>
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