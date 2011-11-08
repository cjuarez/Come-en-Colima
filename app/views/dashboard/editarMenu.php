<?php $this->renderElement("dashboard_menu"); ?>
<div id="subContent">
	<div id="actions">
		<button type="button" dojoType="dijit.form.Button" onclick="window.location = 'platillo'">Agregar Platillo</button>
		<button type="button" dojoType="dijit.form.Button" onclick="window.location = 'categoria'">Agregar Categoria</button>
	</div>
	<?php if (isset($dishAEditar)) { ?>
			<div id="edicion">
				<?php echo $this->html->form("dashboard/editDish/"); ?>
				<input type="hidden" name="idDish" value="<?php echo $dishAEditar['idDish']; ?>">
				<table>
					<tr>
						<th colspan="4">Editar Platillo</th>
					</tr>
					<tr>
						<th>Nombre</th>
						<th>Precio</th>
						<th>Categoría</th>
						<th>Imagen</th>
					</tr>
					<tr>
						<td><input type="text" dojoType="dijit.form.TextBox" name="dish" value="<?php echo $dishAEditar['dish']; ?>"/></td>
						<td><input type="text" dojoType="dijit.form.TextBox" name="price" value="<?php echo $dishAEditar['price'];?>"/></td>
						<td>
							<select name="idCategory">
								<?php foreach ($categories as $key => $category) { ?>
									<option value="<?php echo $category['idCategory']; ?>"><?php echo $category["category"]; ?></option>
								<?php } ?>
							</select>
						</td>
						<td>
							<?php echo $this->html->imagePars($dishAEditar["image"],"width='50'"); ?>
							<input type="file" name="image">
						</td>
					</tr>
				</table>
				<button type="submit" dojoType="dijit.form.Button">Guardar</button>
				</form>
			</div>
	<?php } elseif (isset($add)) { ?>
		<div id="agregar">
			<?php echo $this->html->form("dashboard/addDish/"); ?>
			<table>
				<tr>
					<th colspan="4">Agregar Platillo</th>
				</tr>
				<tr>
					<th>Nombre</th>
					<th>Precio</th>
					<th>Categoría</th>
					<th>Imagen</th>
				</tr>
				<tr>
					<td><input type="text" dojoType="dijit.form.TextBox" name="dish"/></td>
					<td><input type="text" dojoType="dijit.form.TextBox" name="price"/></td>
					<td>
						<select name="idCategory">
							<?php foreach ($categories as $key => $category) { ?>
								<option value="<?php echo $category['idCategory']; ?>"><?php echo $category["category"]; ?></option>
							<?php } ?>
						</select>
					</td>
					<td>
						<input type="file" name="image">
					</td>
				</tr>
			</table>
			<button type="submit" dojoType="dijit.form.Button">Agregar</button>
			</form>
		</div>
	<?php } elseif (isset($cat)) { ?>
		<div id="agregarCategory">
			<?php echo $this->html->form("dashboard/addCategory/"); ?>
			<table>
				<tr>
					<th colspan="4">Agregar Categoria</th>
				</tr>
				<tr>
					<th>Nombre</th>
				</tr>
				<tr>
					<td><input type="text" dojoType="dijit.form.TextBox" name="category"/></td>
					<input type="hidden" name="idRestaurant" value="<?php echo $_SESSION['idRestaurant']; ?>">
				</tr>
			</table>
			<button type="submit" dojoType="dijit.form.Button">Agregar</button>
			</form>
		</div>
	<?php } ?>
	<div id="menuRestaurant">
		<?php
		$categoria = "";
		$iniciado = false;
		foreach ($platillos as $key => $platillo) {
			if ($categoria != $platillo["category"]) {
				$categoria = $platillo["category"];
				echo ($iniciado) ? "</table>" : "" ?>
				<table>
				<tr>
					<th class="rowCategory" colspan="4"><?php echo $platillo["category"]; ?></th>
				</tr>
				<tr>
					<th>Platillo</th>
					<th>Precio</th>
					<th>Imagen</th>
					<th>Opciones</th>
				</tr>
		<?php } ?>
			<tr>
				<td><?php echo $platillo["dish"]; ?></td>
				<td><?php echo $platillo["price"]; ?></td>
				<td><?php echo $this->html->image($platillo["image"]); ?></td>
				<td>
					<input type="button" value="Editar" 	onclick="document.location = '<?php echo $platillo["idDish"]; ?>';">
					<input type="button" value="Eliminar" 	onclick="document.location = '../delDish/<?php echo $platillo["idDish"]; ?>';">
				</td>
			</tr>
		<?php
		 }
		?>
	</div>
</div>