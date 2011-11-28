<?php echo $this->html->form("index/login/"); ?>
	<label for="username" class="ui-hidden-accessible">Username:</label>
	<input type="text" data-theme="b" class="login" id="username" name="username" placeholder="Usuario" value="" />
	<label for="password" class="ui-hidden-accessible">Password:</label>
	<input type="password" data-theme="b" class="login" id="password" name="password" placeholder="Contraseña" value="" />
	<input type="submit" data-theme="b" id="btnLogin" value="Conectarse" />
</form>