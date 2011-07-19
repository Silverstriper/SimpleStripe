//This addiitonal piece helps JQuery work within Silverstripe and the legacy fragments of Prototype
;(function($) {
	$(document).ready(function() {
 		//Search Box Toggle		
		$("#search-box").hide().find('input.text').val('Search');
		$("#search-box").css('top' , '1px');
		
		$("#SearchForm_SearchForm_Search").focus(function() {
			if($(this).val() == "Search") $(this).val("");
		}).blur(function() {
			if($(this).val() == "") $(this).val("Search");
		});
		
 		
	// Standard jQuery footer
	});
})(jQuery);
