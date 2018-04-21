$(document).ready(function() {
  	$("#email").change(function(){
  		var email = $(this).val();
  		if (isEmail(email)) {
  			$.get('checkEmail', {email:email}, function(responseText) {
	  			if (responseText.isRegistered) {
		  			$("#already_registered").show();
	  			} else {
		  			$("#already_registered").hide();
	  			}
        	});
  		} else {
		  	$("#already_registered").hide();
  		}
   	});
});
