<div id="platillo">
	<h3><?php echo $dish["dish"]; ?></h3>
	<?php
		$image = "platillos/".$dish["idDish"].".".$dish["image"];
		$imageIfError = Path."/app/views/images/food_unavailable.gif";
		echo $this->html->imagePars($image,"width=\"400\" onerror=\"this.src='$imageIfError';\""); 
	?>
	<h4>Donde encontrarlo: </h4><?php echo $this->html->linkTo($dish["restaurant"],"restaurantes/detalles/".$dish["idRestaurant"]); ?>
	<h4>Precio:           </h4>$<?php echo $dish["price"]; ?>
	<h4>Descripcion:</h4> <p><?php echo $dish["description"]; ?></p>
</div>
<div id="comments">
	<div id="previousComments">
		<?php if (count($comments)==0){ ?>
			<div id="comentario">
				No hay comentarios todavía.
			</div>
		<?php } else {
			foreach ($comments as $key => $comment): ?>
			<div id="comentario" <?php echo ($comment["idUser"]==0) ? "style=\"background-color:#CBD0C8\"" : ""; ?>>
				<div id="usuario">		<?php echo ($comment["idUser"]!=0) ? $comment["username"] : $dish["restaurant"]; ?> dijo:</div>
				<div id="commentText">	<?php echo $comment["comment"]; ?></div>
				<div id="timestamp">	<?php echo $this->format_date($comment["timestamp"],"spanish");	?></div>
			</div>
		<?php endforeach; 
		}?>
	</div>
	<?php if (isset($_SESSION["idClient"]) || ($_SESSION["idRestaurant"] == $dish["idRestaurant"])): ?>
		<?php echo $this->html->form("platillo/commentDish/".$dish["idDish"]); ?>
			<label for="comment">Comentario:</label>
			<input type="hidden" name="idDish" value="<?php echo $dish["idDish"]; ?>">
			<div id="newComment">
				<textarea id="comment" cols="50" rows="10" name="comment"></textarea>
			</div>
			<input type="submit" value="Comentar">
		</form>	
		<?php echo $this->renderElement("scoring"); ?>
	<?php elseif (!isset($_SESSION["idUser"])): ?>
		<?php echo $this->html->linkTo("Para hacer comentarios necesitas una cuenta.","index/registro"); ?>
	<?php endif ?>
</div>