<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="en" />
<meta name="robots" content="noindex,nofollow" />
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="css/reset.css" />
<!-- RESET -->
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="css/main.css" />
<!-- MAIN STYLE SHEET -->
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="css/2col.css" title="2col" />
<!-- DEFAULT: 2 COLUMNS -->
<link rel="alternate stylesheet" media="screen,projection"
	type="text/css" href="css/1col.css" title="1col" />
<!-- ALTERNATE: 1 COLUMN -->
<!--[if lte IE 6]><link rel="stylesheet" media="screen,projection" type="text/css" href="css/main-ie6.css" /><![endif]-->
<!-- MSIE6 -->
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="css/style.css" />
<!-- GRAPHIC THEME -->
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="css/mystyle.css" />
<!-- WRITE YOUR CSS CODE HERE -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/switcher.js"></script>
<script type="text/javascript" src="js/toggle.js"></script>
<script type="text/javascript" src="js/ui.core.js"></script>
<script type="text/javascript" src="js/ui.tabs.js"></script>
<script type="text/javascript" language="javascript"
	src="js/ajax_functions.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".tabs > ul").tabs();
		$('#txtusername').focus();
	});
</script>
<title>empadmin2.0</title>
<link rel="shortcut icon" href="design/panda.jpeg"/>
</head>

<body>

	<div id="main">

		<!-- Tray -->
		<%@include file="indextray.jsp"%>

		<hr class="noscreen" />

		<%@include file="indexmenuheader.jsp"%>

		<hr class="noscreen" />

		<!-- Columns -->
		<div id="cols" class="box">

			<!-- Aside (Left Column) -->
			<div id="aside" class="box">

				<%@include file="indexleftpaddingbox.jsp"%>

			</div>
			<!-- /aside -->

			<hr class="noscreen" />

			<!-- Content (Right Column) -->
			<div id="content" class="box" style="height:480px">
				<!-- the main container div mahder -->
					
				<img src="images/human_resource.jpg" border="0" align="middle" width="100%"/>			
				<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
				<div style="float:right">
					<img src="images/signetlogo.jpg" align="absmiddle" width="90%"/>
				</div>
			</div>
			<!-- /content -->

		</div>
		<!-- /cols -->

		<hr class="noscreen" />

		<!-- Footer -->
		<%@include file="footer.jsp"%>

	</div>
	<!-- /main -->

</body>
</html>
