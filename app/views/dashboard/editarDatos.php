<?php 

	$this->renderElement("dashboard_menu");
	echo $this->html->form("dashboard/editarDatos"); 
?>
<div id="subContent">
	<label for="firstName">Nombre(s):</label><br/>
	<input class="txtDatos" type="text" id="firstName" name="firstName" value="<?php echo $cliente['firstName']; ?>" /> <br/>
	
	<label for="lastName">Apellido:</label><br/>
	<input class="txtDatos" type="text" id="lastName" name="lastName" value="<?php echo $cliente['lastName']; ?>" /><br/>
	
	<label for="address">Dirección:</label><br/>
	<input class="txtDatos" type="text" id="address" name="address" value="<?php echo $cliente['address']; ?>" /><br/>
	
	<label for="city">Ciudad:</label><br/>
	<input class="txtDatos" type="text" id="city" name="city" value="<?php echo $cliente['city']; ?>" /><br/>
	
	<label for="cp">Código Postal:</label><br/>
	<input id="cp" class="txtDatos" type="text" name="cp" value="<?php echo $cliente['cp']; ?>" /><br/>
	
	<label for="telephone">Teléfono:</label><br/>
	<input class="txtDatos" type="text" id="telephone" name="telephone" value="<?php echo $cliente['telephone']; ?>" /><br/>
	<div id="buttons">
		<div id="right">
			<input id="btnUpdate" type="submit" value="Actualizar" />
		</div>
	</div>
</form>
</div>