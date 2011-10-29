<?php echo $this->html->form("index/register/"); ?>
<div id="datosUser">
	<label for="username">Nombre de Usuario</label><br/>
	<input class="txtDatos" type="text" id="username" name="username" /> <br/>

	<label for="password">Contraseña</label><br/>
	<input class="txtDatos" type="password" id="password" name="password" /><br/>

	<label for="password1">Repita la Contraseña</label><br/>
	<input class="txtDatos" type="password" id="password1" name="password1" /><br/>

	<label for="email">Correo Electrónico</label><br/>
	<input class="txtDatos" type="email" id="email" name="email" /><br/>

	<label for="radioRestaurante">Restaurante</label>
	<input type="radio" class="radioTipoUser" name="tipoDeUsuario" id="radioRestaurante" value="1" onclick="hideInputsForRegistration(this);">

	<label for="radioCliente">Cliente</label>
	<input type="radio" class="radioTipoUser" name="tipoDeUsuario" id="radioCliente" value="2" onclick="hideInputsForRegistration(this);"><br/>
</div>
<div id="datosRestaurante">
	<label for="restaurant">Nombre del Restaurante:</label><br/>
	<input class="txtDatos" type="text" id="restaurant" name="restaurant"></br>
	
	<label for="idType">Tipo de Restaurante:</label><br/>
	<select name="idType">
		<option value="-1">Seleccione un tipo.</option>
		<?php foreach ($tipos as $key=>$tipo){ ?>
			<option value="<?php echo $tipo['idType']; ?>"><?php echo $tipo["type"]; ?></option>
		<?php } ?>
	</select><br/>
	<label for="logo">Logo del restaurante:</label><br/>
	<input id="logo" type="file" name="logo" /><br/>
</div>

<div id="datosCliente">
	<label for="firstName">Nombre(s):</label><br/>
	<input class="txtDatos" type="text" id="firstName" name="firstName" value="" /> <br/>
	
	<label for="lastName">Apellido:</label><br/>
	<input class="txtDatos" type="text" id="lastName" name="lastName" value="" /><br/>
</div>

<div id="datosEnComun">
	<label for="address">Dirección:</label><br/>
	<input class="txtDatos" type="text" id="address" name="address"/><br/>
	
	<label for="city">Ciudad:</label><br/>
	<input class="txtDatos" type="text" id="city" name="city" value=""/><br/>
	
	<label for="cp">Código Postal:</label><br/>
	<input class="txtDatos" type="text" name="cp" value=""/><br/>
	
	<label for="telephone">Teléfono:</label><br/>
	<input class="txtDatos" type="text" id="telephone" name="telephone" value=""/><br/>
<div>
<input id="btnRegistrar" type="submit" value="Registrar" />
</form>