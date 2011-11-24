<?php header( 'Content-type: text/html; charset=iso-8859-1' );?>
<div id="nav">
	<?php echo $this->renderElement("filtros"); ?>
</div>
<div id="subContent">
<div id="busqueda">
	<?php echo $this->html->form("restaurantes/busqueda/"); ?>
	<input type="text" name="term" value="<?php echo @$term; ?>" /> 
	<input type="submit" name="btnBuscar" value="Buscar">
	</form> 
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
			<div class="clear">
			</div>
		</div>
	<?php } ?>
</div>
<div class="paginationContainer">
	<div class="gigantic pagination">
    	<a href="#" class="first" data-action="first">&laquo;</a>
    	<a href="#" class="previous" data-action="previous">&lsaquo;</a>
    	<input type="text" readonly="readonly" data-max-page="<?php echo $maxPages; ?>" />
    	<a href="#" class="next" data-action="next">&rsaquo;</a>
    	<a href="#" class="last" data-action="last">&raquo;</a>
	</div>
	<div class="clear"></div>
</div>
</div>
<div class="clear">
	</div>
	<?php echo $this->html->includeJs("jquery.jqpagination"); ?>
	<script>
		$('.pagination').jqPagination({
			current_page: <?php echo (isset($currentPage)) ? $currentPage : "1" ; ?>,
    		paged: function(page) {
        		// do something with the page variable
        		window.location = "<?php echo Path; ?>restaurantes/"+page;
    		}
		});
	</script>