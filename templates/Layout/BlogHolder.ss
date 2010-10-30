<div id="pageContent">
	<section class="grid_8">
		
		<hgroup class="title">
			<h1>$Title</h1>
			
				<% if SelectedTag %>
					<h4><% _t('VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h4>
				<% else_if SelectedCategory %>
					<h4><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedCategory</h4>
				<% else_if SelectedDate %>
					<h4><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedDate.Month $SelectedDate.Year</h4>
				<% end_if %>
			
		</hgroup>
		
		<% if BlogEntries %>
			<% control BlogEntries %>
					<article>
						<% include BlogSummary %>
					</article>
			<% end_control %>
		<% else %>
			<h3><% _t('NOENTRIES', 'There are no blog entries') %></h3>
		<% end_if %>

		<% include BlogPagination %>
		
	</section>

	<aside class="grid_4">
		<% include SideBar %>
		<% include BlogSideBar %>		
	</aside>
</div>
