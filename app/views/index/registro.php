<?php echo $this->html->form("index/register/","POST","enctype=\"multipart/form-data\" id=\"formaRegistro\" name=\"formaRegistro\""); ?>
<div id="datosUser">
	<label for="username">Nombre de Usuario</label><br/>
	<input type="text" id="username" dojoType="dijit.form.TextBox" name="username"/>
	<!--  <div id="usernameTooltip" dojoType="dijit.Tooltip" connectId="username" showDelay="2000">
		<span id="isAvailable"></span>
	</div>-->
	<br/>

	<label for="password">Contraseña</label><br/>
	<input type="password" id="password" dojoType="dijit.form.TextBox" name="password" /><br/>

	<label for="password1">Repita la Contraseña</label><br/>
	<input type="password" id="password1" dojoType="dijit.form.TextBox" name="password1" /><br/>

	<label for="email">Correo Electrónico</label><br/>
	<input type="email" id="email" dojoType="dijit.form.TextBox" name="email" /><br/>

	<label for="radioRestaurante">Restaurante</label>
	<input type="radio" name="tipoDeUsuario" id="radioRestaurante" value="1" onclick="hideInputsForRegistration(this);">

	<label for="radioCliente">Cliente</label>
	<input type="radio" name="tipoDeUsuario" id="radioCliente" value="2" onclick="hideInputsForRegistration(this);"><br/>
</div>
<div id="datosRestaurante">
	<label for="restaurant">Nombre del Restaurante:</label><br/>
	<input type="text" id="restaurant" dojoType="dijit.form.TextBox" name="restaurant"><br/>
	
	<label for="idType">Tipo de Restaurante:</label><br/>
	<select id="idType" dojoType="dijit.form.FilteringSelect" name="idType">
		<option value="-1">Seleccione un tipo.</option>
		<?php foreach ($tipos as $key=>$tipo){ ?>
			<option value="<?php echo $tipo['idType']; ?>"><?php echo $tipo["type"]; ?></option>
		<?php } ?>
	</select><br/>
	<label for="logo">Logo del restaurante:</label><br/>
	 <input type="hidden" name="MAX_FILE_SIZE" value="3145728">
	<input id="logo" type="file" name="logo" /><br/>
</div>

<div id="datosCliente">
	<label for="firstName">Nombre(s):</label><br/>
	<input type="text" id="firstName" dojoType="dijit.form.TextBox" name="firstName"/> <br/>
	
	<label for="lastName">Apellido:</label><br/>
	<input type="text" id="lastName" dojoType="dijit.form.TextBox" name="lastName"/><br/>
</div>

<div id="datosEnComun">
	<label for="address">Dirección:</label><br/>
	<input type="text" id="address" dojoType="dijit.form.TextBox" name="address"/><br/>
	
	<label for="city">Ciudad:</label><br/>
	<input type="text" id="city" dojoType="dijit.form.TextBox" name="city"/><br/>
	
	<label for="cp">Código Postal:</label><br/>
	<input id="cp" dojoType="dijit.form.NumberTextBox" type="text" name="cp"/><br/>
	
	<label for="telephone">Teléfono:</label><br/>
	<input type="text" id="telephone" name="telephone"  dojoType="dijit.form.TextBox"/><br/>
	<div id="buttons">
		<div id="left">
			<input id="btnBorrar" type="button" value="Borrar Datos" onclick="clearAllElements('#formaRegistro');" />
		</div>
		<div id="right">
			<input id="btnRegistrar" type="button" value="Registrar" onclick=""/>
		</div>
	</div>
</div>
</form>