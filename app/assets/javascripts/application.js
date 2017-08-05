//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
$(document).ready(function(){
	$(".custom-header .nav li").click(function(){
	$(this).addClass("selected");
});
})
