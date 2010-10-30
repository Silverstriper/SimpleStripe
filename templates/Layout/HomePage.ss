<% if HomeMainHeading %>
<header id="homeFeature" class="grid_12">
	
	<hgroup>
		<h2>$HomeMainHeading</h2>
		<h3>$HomeSubHeading</h3>
	</hgroup>
	
	<!--<div id="callToAction"><a href="#">Get Your Quote</a></div>-->

</header>
<% end_if %>

<div id="homeContent">

	<article id="homeAbout" class="grid_4">
		$HomeCol1
	</article>

	<article id="homeWhat" class="grid_4">
		$HomeCol2
	</article>

	<aside id="homeBlog" class="grid_4">
		<h2>From The Blog</h2>
		<% if LatestBlogPosts %>
		<ul>
		  <% control LatestBlogPosts %>
		    <li><a href="$Link" title="Read more on &quot;{$Title}&quot;">$Title</a></li>
		  <% end_control %>
		</ul>
		<% end_if %>
	</aside>

</div>

	
