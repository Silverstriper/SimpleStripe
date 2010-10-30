<div class="PageComments_Header">
	<h5>
	<% if CommenterURL %>
		<a href="$CommenterURL" rel="nofollow external" title="$CommenterURL">$Name.XML</a> <span><% _t('COMMENTSAYS', 'says:') %></span>
	<% else %>
		$Name.XML <span><% _t('COMMENTSAYS', 'says:') %></span>
	<% end_if %>
	</h5>
	<span>$Created.Format(m/d/Y)  ($Created.Ago)</span>
</div>

	


<p class="comment" id="PageComment_$ID">
	<% if bbCodeEnabled %>
		$ParsedBBCode	
	<% else %>
		$Comment.XML	
	<% end_if %>
</p>
<p class="info">
	<ul class="actionLinks">
		<% if ApproveLink %>
			<li><a href="$ApproveLink" class="approvelink"><% _t('APPROVE', 'approve this comment') %></a></li>
		<% end_if %>
		<% if SpamLink %>
			<li><a href="$SpamLink" class="spamlink"><% _t('ISSPAM','this comment is spam') %></a></li>
		<% end_if %>
		<% if HamLink %>
			<li><a href="$HamLink" class="hamlink"><% _t('ISNTSPAM','this comment is not spam') %></a></li>
		<% end_if %>
		<% if DeleteLink %>
			<li class="last"><a href="$DeleteLink" class="deletelink"><% _t('REMCOM','remove this comment') %></a></li>
		<% end_if %>
	</ul>
</p>