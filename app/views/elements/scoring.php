<div id="scoring">
	<div id="hint">
		<?php switch ($initialScore) {
		case '5':
			echo "Excelente";
			break;
		case '4':
			echo "Bueno";
			break;
		case '3':
			echo "Regular";
			break;
		case '2':
			echo "Malo";
			break;
		case '1':
			echo "Muy malo";
			break;
		default:
			break;
	} ?>
	</div>
	<div id="score"></div>
	<div class="clear"></div>
</div>
<script>
$(function() {
	$('#score').raty({
  		cancel: false,
  		start:	<?php echo $initialScore; ?>,
  		iconRange: [['face-a.png', 2], ['face-b.png', 3], ['face-c.png', 4], ['face-d.png', 5]],
  		starOff:   'face-off.png',
  		target: '#hint',
  		hintList: ['Muy malo', 'Malo', 'Regular', 'Bueno', 'Excelente'],
  		cancelHint: '0',
  		click: function(score, evt) {
        	var url = "<?php echo $scoreUrl; ?>"+score;
        	$.get(url);
  		},
  		targetKeep: false,
  		noRatedMsg: ""
});
});
</script>