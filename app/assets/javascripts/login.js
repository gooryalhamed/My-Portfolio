function login(){
	$("#ok").click(function(){
		if($('#password').val()=="qashabri"){
			$('#login').addClass("hidden");
			$('#projects_wrapper').removeClass("hidden");
		}
		else{
			alert('The secret code is wrong!')
		}
	})
}
