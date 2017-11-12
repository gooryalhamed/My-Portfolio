//= require jquery
//= require jquery_ujs

//= require bootstrap-sprockets

$(document).ready(function(){
	checkPath();
})
var current_page = window.location.pathname;
function checkPath(){
	if (current_page == "/") {
		$('.custom-header a').removeClass('selected');
		$('#home').addClass('selected');
	}
	else if (current_page == "/my-cv") {
		$('.custom-header a').removeClass('selected');
		$('#cv').addClass('selected');
	}
	else if (current_page == "/my-projects") {
		$('.custom-header a').removeClass('selected');
		$('#projects').addClass('selected');
	}
	else if (current_page == "/contacts/new") {
		$('.custom-header a').removeClass('selected');
		$('#contact').addClass('selected');
	}
}

