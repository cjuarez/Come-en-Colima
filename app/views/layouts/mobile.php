<!DOCTYPE html> 
<html> 
	<head> 
	<title><?php echo $title_for_layout; ?></title> 
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"> 
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.0/jquery.mobile-1.0.min.css" />
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/mobile/1.0/jquery.mobile-1.0.min.js"></script>
	<?php echo $this->html->includeCss("mobile"); ?>
	<?php echo $this->html->includeCss("jqpagination"); ?>
</head> 
<body> 

<div id="page" data-role="page" data-add-back-btn="true" data-back-btn-text="Volver">
	<div data-role="header">
		<h1>Come en Colima</h1>
		<a href="<?php echo Path; ?>index" data-icon="home" class="ui-btn-right">Inicio</a>
	</div>
	<div id="content" data-role="content">
		<?php echo $content_for_layout ?>		
	</div>
</div>
</body>
<?php echo $this->html->includeJs("script"); ?>
</html>