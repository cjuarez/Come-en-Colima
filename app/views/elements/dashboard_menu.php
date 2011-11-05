<div id="nav">
	<ul class="verticalMenu">
	<?php foreach ($menu as $key => $item) { ?>
		<li><?php echo $this->html->linkTo($item[0],$item[1]); ?></li>
	<?php } ?>
	</ul>
</div>