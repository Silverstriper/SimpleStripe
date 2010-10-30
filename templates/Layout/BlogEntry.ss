<div id="pageContent">
	<div class="grid_8">
		<h1>$Parent.Title</h1>
		<article>
			<hgroup class="BlogTitle">
				<h2>$Title</h2>
				<h6 class="meta"><% if Date %><% _t('POSTEDON', 'Posted') %> $Date.Long<% end_if %> <% if Author %><% _t('POSTEDBY', 'Posted by') %> $Author.XML<% end_if %></h6>
				<% if TagsCollection %>
					<h6 class="meta">
						<% _t('TAGS', 'Tags:') %> 
						<% control TagsCollection %>
							<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
						<% end_control %>
					</h6>
				<% end_if %>
				<h6 class="numComments"><a href="$Link#PageComments_holder" title="View Comments Posted">$Comments.Count</a></h6>
			</hgroup>
		
			<% if IsWYSIWYGEnabled %>
				$Content
			<% else %>
				$ParsedContent
			<% end_if %>
		</article>
		
		<% if IsOwner %><p><a href="$EditURL" id="editpost" title="<% _t('EDITTHIS', 'Edit this post') %>"><% _t('EDITTHIS', 'Edit this post') %></a> | <a href="$Link(unpublishPost)" id="unpublishpost"><% _t('UNPUBLISHTHIS', 'Unpublish this post') %></a></p><% end_if %>

		
		
		<section id="social">
			<h4><% _t('BOOKMARKTHIS', 'Bookmark This') %></h4>
			<p><% _t('BOOKMARKTHISTEXT', 'If you have enjoyed this entry. Please feel free to bookmark it using one of the following social sites.') %></p>
			<ul>
				<li><a href="http://www.designfloat.com/submit.php?url={$AbsoluteLink}" rel="external" class="designfloat">DesignFloat</a></li>
				<li><a href="http://del.icio.us/post?url={$AbsoluteLink}" rel="external" class="delicious">Delicious</a></li>
				<li><a href="http://digg.com/submit?phase=2&amp;url={$AbsoluteLink}" rel="external" class="digg">Digg</a></li>
				<li><a href="http://www.stumbleupon.com/submit?url={$AbsoluteLink}" rel="external" class="stumbleupon">StumbleUpon</a></li>
				<li><a href="http://reddit.com/submit?url={$AbsoluteLink}" rel="external" class="reddit">Reddit</a></li>
				<li><a href="http://technorati.com/faves?add={$AbsoluteLink}" rel="external" class="technorati">Technorati</a></li>
			</ul>
		</section>
		
		<% if TrackBacksEnabled %>
			<section id="trackbacks">
				<% include TrackBacks %>
			</section>
		<% end_if %>
		
		<% if PageComments %><section>$PageComments</section><% end_if %>
		
	</div>

	<aside class="grid_4">
		<% include SideBar %>
		<% include BlogSideBar %>		
	</aside>
	
</div>
