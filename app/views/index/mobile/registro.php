<?php echo $this->html->form("index/register/","POST","id=\"formaRegistro\" name=\"formaRegistro\""); ?>
<div id="datosUser">
	<label for="username" class="ui-hidden-accessible">Nombre de Usuario</label>
	<input type="text" data-theme="b" id="username" placeholder="Nombre de Usuario" name="username" value="<?php echo @$datos["username"]; ?>"/>
	
	<label for="password" class="ui-hidden-accessible">Contraseña</label>
	<input type="password" data-theme="b" id="password" placeholder="Contraseña" name="password" />

	<label for="password1" class="ui-hidden-accessible">Repita la Contraseña</label>
	<input type="password" data-theme="b" id="password1" placeholder="Repita la Contraseña" name="password1" />
	
	<label for="email" class="ui-hidden-accessible">Correo Electrónico</label>
	<input type="email" data-theme="b" id="email" placeholder="Correo Electrónico" name="email"  value="<?php echo @$datos["email"]; ?>"/>

	<label for="radioRestaurante">Restaurante</label>
	<input type="radio" data-theme="b" name="tipoDeUsuario" id="radioRestaurante" value="1" onclick="hideInputsForRegistration(this);">

	<label for="radioCliente">Cliente</label>
	<input type="radio" data-theme="b" name="tipoDeUsuario" id="radioCliente" value="2" onclick="hideInputsForRegistration(this);">
</div>
<div id="datosRestaurante">
	<label for="restaurant" class="ui-hidden-accessible">Nombre del Restaurante:</label>
	<input type="text" data-theme="b" id="restaurant" placeholder="Nombre del Restaurante" name="restaurant"  value="<?php echo @$datos["restaurant"]; ?>">
	

	<select id="idType" data-theme="b" name="idType">
		<option value="-1">Seleccione un tipo.</option>
		<?php foreach ($tipos as $key=>$tipo){ ?>
			<option value="<?php echo $tipo['idType']; ?>"><?php echo $tipo["type"]; ?></option>
		<?php } ?>
	</select>
</div>

<div id="datosCliente">
	<label for="firstName" class="ui-hidden-accessible">Nombre(s):</label>
	<input type="text" data-theme="b" id="firstName" placeholder="Nombre(s)" name="firstName" value="<?php echo @$datos["firstName"]; ?>"/>
	
	<label for="lastName" class="ui-hidden-accessible">Apellido:</label>
	<input type="text" data-theme="b" id="lastName" placeholder="Apellidos" name="lastName" value="<?php echo @$datos["lastName"]; ?>"/>
</div>

<div id="datosEnComun">
	<label for="address" class="ui-hidden-accessible">Dirección:</label>
	<input type="text" data-theme="b" id="address" placeholder="Dirección" name="address" value="<?php echo @$datos["address"]; ?>"/>
	
	<label for="city" class="ui-hidden-accessible">Ciudad:</label>
	<input type="text" data-theme="b" id="city" placeholder="Ciudad" name="city" value="<?php echo @$datos["city"]; ?>"/>
	
	<label for="cp" class="ui-hidden-accessible">Código Postal:</label>
	<input id="cp" data-theme="b" placeholder="Código Postal" type="text" name="cp" value="<?php echo @$datos["cp"]; ?>"/>
	
	<label for="telephone" class="ui-hidden-accessible">Teléfono:</label>
	<input type="text" data-theme="b" id="telephone" name="telephone"  placeholder="Teléfono" value="<?php echo @$datos["telephone"]; ?>"/>
	<div id="buttons">
		<div id="left">
			<input id="btnBorrar" data-theme="b" type="button" value="Borrar Datos" onclick="clearAllElements('#formaRegistro');"/>
		</div>
		<div id="right">
			<input id="btnRegistrar" data-theme="b" type="button" value="Registrar" onclick="validateForm();" />
		</div>
	</div>
</div>
</form>
<?php if (isset($mensaje)) { ?>
	<script>
		alert ("<?php echo $mensaje ?>");
	</script>
<?php } ?>