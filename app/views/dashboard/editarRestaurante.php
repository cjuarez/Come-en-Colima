<?php $this->renderElement("dashboard_menu"); 
	echo $this->html->form("dashboard/editarRestaurante","POST","enctype=\"multipart/form-data\"");
?>
<div id="subContent">
	<label for="restaurant">Nombre del Restaurante:</label><br/>
	<input class="txtDatos" type="text" id="restaurant" name="restaurant" value="<?php echo $restaurante["restaurant"] ?>"><br/>
	<label for="idType">Tipo de Restaurante:</label><br/>
	<select id="idType" name="idType">
		<option value="-1">Seleccione un tipo.</option>
		<?php foreach ($tipos as $key=>$tipo){ ?>
		<option value="<?php echo $tipo['idType']; ?>" <?php echo ($tipo["idType"]==$restaurante["idType"]) ? "SELECTED" : "" ?>>
			<?php echo utf8_encode($tipo["type"]); ?>
		</option>
		<?php } ?>
	</select><br/>
	<label for="logo">Logo del restaurante:</label><br/>
	
	<?php echo $this->html->imagePars($restaurante['logo'],"alt=\"logo\" width=\"100\" onerror=\"this.src='$imageIfError'\""); ?><br/>
	 <input type="hidden" name="MAX_FILE_SIZE" value="3145728">
	<input id="logo" type="file" name="logo" /><br/>
	<label for="address">Dirección:</label><br/>
	<input class="txtDatos" type="text" id="address" name="address" value="<?php echo $restaurante["address"] ?>"/><br/>
	<label for="city">Ciudad:</label><br/>
	<input class="txtDatos" type="text" id="city" name="city" value="<?php echo $restaurante["city"] ?>"/><br/>
	<label for="cp">Código Postal:</label><br/>
	<input id="cp" class="txtDatos" type="text" name="cp" value="<?php echo $restaurante["cp"] ?>"/><br/>
	<label for="telephone">Teléfono:</label><br/>
	<input class="txtDatos" type="text" id="telephone" name="telephone" value="<?php echo $restaurante["telephone"] ?>"/><br/>
	<div id="buttons">
		<div id="right">
			<input id="btnUpdate" type="submit" value="Actualizar" />
		</div>
	</div>
</div>