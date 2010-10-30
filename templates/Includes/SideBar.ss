<!-- Turn this on when you enable basic search -->
<!-- <div id="searchBox">
	$SearchForm
</div> -->
<!-- End Turn this on when you enable basic search -->

<% if Menu(2) %>	
<nav id="nav_SideBar">
	<h3>
		<% control Level(1) %>
			<a href="$Link" title="$Title.XML">$Title</a>
		<% end_control %>
	</h3>
	<ul>
		<% control Menu(2) %>
			<li><a href="$Link" title="$Title.XML" class="$LinkingMode <% if LinkOrSection = section %><% if Children %>hasChildren<% end_if %><% end_if %>">$MenuTitle.XML</a>
	  			<% if LinkOrSection = section %>
	  				<% if Children %>
						<ul>
							<% control Children %>
								<li><a href="$Link" title="$Title.XML" class="$LinkingMode">$MenuTitle.XML</a></li>
							<% end_control %>
						</ul>
			 		 <% end_if %>
				<% end_if %> 
			</li> 
 		<% end_control %>
 	</ul>
</nav>
<% end_if %> 

<% if SiteConfig.TwitterAccount %>
<nav class="widget">
	<ul>
		<!--<li class="rss"><a href="blog/rss">Subscribe to RSS Feed</a></li>-->
		<li class="twitter"><a href="http://twitter.com/silverstriper">Follow me on Twitter</a></li>
	</ul>
</nav>
<% end_if %>


