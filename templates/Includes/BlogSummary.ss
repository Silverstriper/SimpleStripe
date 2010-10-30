<section class="blogSummary">
	<hgroup class="BlogTitle">
		<h2><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$Title</a></h2>
		<h6 class="meta"><% if Date %><% _t('POSTEDON', 'Posted') %> $Date.Long<% end_if %> <% if Author %><% _t('POSTEDBY', 'Posted by') %> $Author.XML<% end_if %></h6>
		<% if TagsCollection %>
			<h6 class="meta">
				<% _t('TAGS', 'Tags:') %> 
				<% control TagsCollection %>
					<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
				<% end_control %>
			</h6>
		<% end_if %>
		<h6 class="numComments"><a href="$Link#PageComments_holder" title="<% _t('BLOGVIEWCOMMENTS', 'View Comments') %>">$Comments.Count</a></h6>
	</hgroup>
	<div class="blogSummary_paragraph">
			$Content.Summary(50)
	</div>
	<p class="blogVitals"><a href="$Link" class="readmore" title="<% _t('BLOGREADFULL', 'Read the full post') %>"><% _t('BLOGREADFULL', 'Read the full post') %></a></p>
</section>