<!DOCTYPE HTML>
<html>
	<head>
    		<title><?php echo $title_for_layout; ?></title>
		<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/dojo/1.6/dijit/themes/tundra/tundra.css" type="text/css">
		<link href='http://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet' type='text/css'>
        <?php echo $this->html->charsetTag("UTF-8"); ?>
 		<?php echo $this->html->includeCss("style"); ?>
		<script src="http://ajax.googleapis.com/ajax/libs/dojo/1.6.1/dojo/dojo.xd.js" type="text/javascript" data-dojo-config="isDebug:true, parseOnLoad:true"></script>
		<?php echo $this->html->includeJs("script"); ?>
		
	</head>
    <body class="tundra">
	<div id="wrapper">
		<div id="header">
			<h1>Come en Colima</h1>
		</div>
        <div id="content">
			<div id="menu">
				<?php $this->renderElement("menu"); ?>
			</div>
			<div id="mainContent">
            	<?php echo $content_for_layout ?>
        	</div>
			<div id="clear">
			</div>
		</div>
	</div>
    </body>
</html>