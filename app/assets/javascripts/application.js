//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require login
$(document).ready(function(){
	checkPath();
	new_proj();
	login();
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
	else if (current_page == "/projects") {
		$('.custom-header a').removeClass('selected');
		$('#projects').addClass('selected');
	}
	else if (current_page == "/contacts/new") {
		$('.custom-header a').removeClass('selected');
		$('#contact').addClass('selected');
	}
}
function new_proj(){
	$('.fa-plus-circle').click(function(){
		$('#new_project_div').removeClass('hidden');
	})
}


