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
	<div id="comentario"></div>
	</div>
	<?php if (isset($_SESSION["idUser"])): ?>
		<?php echo $this->html->form("platillo/commentDish/".$dish["idDish"]); ?>
			<label for="comment">Comentario:</label>
			<div id="newComment">
				<input type="hidden" name="idDish" value="<?php echo $dish["idDish"]; ?>">
				<textarea id="comment" cols="50" rows="10" name="comment"></textarea>
			</div>
			<input type="submit" value="Enviar">
		</form>	
		<?php echo $this->renderElement("scoring"); ?>
	<?php else: ?>
		<?php echo $this->html->linkTo("Para hacer comentarios necesitas una cuenta.","index/registro"); ?>
	<?php endif ?>
</div>