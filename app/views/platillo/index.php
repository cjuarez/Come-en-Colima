<div id="restaurant">
	<?php echo $dish["restaurant"]; ?>
</div>
<div id="dish">
	<?php echo "$" . $dish["dish"]; ?>
</div>
<div id="price">
	<?php echo "$" . $dish["price"]; ?>
</div>
<div id="image">
	<?php echo $this->html->image($dish["image"]); ?>
</div>