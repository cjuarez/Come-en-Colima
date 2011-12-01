<h2>Filtros:</h2>

<ul id="menu">
	<li><a href="#">Tipos de Restaurantes</a>
		<ul class="submenu">
			<?php foreach ($tipos as $key => $tipo): ?>
				<li><a href="<?php echo Path; ?>restaurantes/filtros/tipo,<?php echo $tipo['idType']; ?>"><?php echo utf8_encode($tipo["type"]); ?></a>
			<?php endforeach ?>
		</ul>
	</li>
	<li><a href="#">Codigos Postales</a>
		<ul class="submenu">
			<?php foreach ($cps as $key => $cp): ?>
				<li><a href="<?php echo Path; ?>restaurantes/filtros/cp,<?php echo $cp['cp']; ?>"><?php echo $cp["cp"]; ?></a>
			<?php endforeach ?>
		</ul>
	</li>
</ul> 