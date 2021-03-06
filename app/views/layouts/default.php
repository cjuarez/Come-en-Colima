<!DOCTYPE HTML>
<html>
	<head>
   		<title><?php echo $title_for_layout; ?></title>
		<link href='http://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Actor' rel='stylesheet' type='text/css'>
        <?php echo $this->html->charsetTag("UTF-8"); ?>
		<?php echo $this->html->includeJs("jquery"); ?>
 		<?php echo $this->html->includeCss("style"); ?>
		<?php echo $this->html->includeJs("script"); ?>
		<?php echo $this->html->includeJs("jquery.raty"); ?>
		<?php echo $this->html->includeCss("jqpagination"); ?>
	</head>
    <body class="tundra">
	<div id="container">
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
				<div class="clear">
				</div>
			</div>
		</div>
		<div id="footer">
		</div>
	</div>
    </body>
</html>