<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
	<meta charset="utf-8" />
	<% base_tag %>
	<% if MetaDescription %><meta name="description" http-equiv="description" content="$MetaDescription" /><% end_if %>
	<meta name="generator" content="SilverStripe - http://www.silverstripe.org" />
	<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<link rel="shortcut icon" href="/favicon.ico" />
	<link rel="stylesheet" href="themes/simplestripe/css/layout.css" type="text/css" media="screen" />
	
	<!--[if IE 6]>
		<link rel="stylesheet" href="themes/simplestripe/css/ie/ie6.css" type="text/css" media="screen" charset="utf-8" />
	<![endif]-->
	
	<!--[if IE 7]>
		<link rel="stylesheet" href="themes/simplestripe/css/ie/ie7.css" type="text/css" media="screen" charset="utf-8" />
	<![endif]-->
	
	<!--[if IE]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	
	<!-- TypeKit.com -->
	<% if SiteConfig.TypekitID %>
		<script type="text/javascript" src="http://use.typekit.com/{$SiteConfig.TypekitID}.js"></script>
		<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
	<% end_if %>
			
</head>
	<body>
	<div id="container" class="container_12">
		
		<% include Header %>
		
		<div id="content" class="pageWrapper typography">
			<div class="container_12">
				$Layout
			</div>
		</div>
		
		<% include Footer %>
		
	</div>
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js" type="text/javascript"></script>
	<script src="themes/simplestripe/js/plugins/jquery.smooth-scroll.js" type="text/javascript" charset="utf-8"></script>
	<script src="themes/simplestripe/js/global.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>
