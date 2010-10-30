<div id="pageContent">
	<section class="grid_8">
		<hgroup class="title">
			<h2>$Title</h2>
		</hgroup>
		
		
		<% if Query %>
		    <h4 class="searchQuery"><strong><% _t('SEARCHQUERYTERM', 'You searched for') %> &quot;{$Query}&quot;</strong></h4>
		<% end_if %>
				
		<% if Results %>
		    <ul id="SearchResults">
		      <% control Results %>
		        <li>
		          <h4><a class="searchResultHeader" href="$Link">
		            <% if MenuTitle %>
		              $MenuTitle
		            <% else %>
		              $Title
		            <% end_if %>
		          </a></h4>
		          <p>$Content.LimitWordCountXML</p>
		          <p><a class="readMoreLink" href="$Link" title="<% _t('SEARCHREADMORE', 'Read more about') %> &quot;{$Title}&quot;"><% _t('SEARCHREADMORE', 'Read more about') %> &quot;{$Title}&quot;...</a></p>
		        </li>
		      <% end_control %>
		    </ul>
		  <% else %>
		    <p>Sorry, your search did not match any results.</p>
			<p>Suggestions:
				<ul>
					<li>Make sure all words are spelled correctly.</li>
					<li>Try different keywords.</li>
					<li>Try more general keywords.</li>
					<li>Try fewer keywords.</li>
				</ul>
			</p>
		  <% end_if %>
					
		  <% if Results.MoreThanOnePage %>
		    <div id="PageNumbers">
		      <% if Results.NotLastPage %>
		        <a class="next" href="$Results.NextLink" title="<% _t('PAGENEXTTITLE', 'View the next page') %>"><% _t('PAGENEXT', 'Next') %></a>
		      <% end_if %>
		      <% if Results.NotFirstPage %>
		        <a class="prev" href="$Results.PrevLink" title="<% _t('PAGEPREVTITLE', 'View the previous page') %>"><% _t('PAGEPREV', 'Next') %></a>
		      <% end_if %>
		      <span>
		        <% control Results.Pages %>
		          <% if CurrentBool %>
		            $PageNum
		          <% else %>
		            <a href="$Link" title="<% _t('PAGENUM', 'View page number') %> $PageNum">$PageNum</a>
		          <% end_if %>
		        <% end_control %>
		      </span>
		      <p>Page $Results.CurrentPage of $Results.TotalPages</p>
		    </div>
		  <% end_if %>
		
		
		
	</section>

	<div class="grid_4">
		<% include SideBar %>
	</div>
</div>




