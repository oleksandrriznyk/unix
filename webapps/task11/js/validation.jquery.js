function isValidForm() {
	var valid = true;

	$('form#register_form :input').each(function() {
		var $this = $(this);
		var name = $this.attr('name');
		if (name == 'form_submit' || name == 'avatar') {
			return;
		}
		if (!$this.val() || $this.val().length <= 3) {
			showError(name);
			valid = false;
		} else if (name == 'email' && !isEmail($this.val())) {
			showError(name);
			valid = false;
		} else if (name == 'password_confirmation' && !samePasswords()) {
			showError(name);
			valid = false;
		} else {
			hideError(name);
		}
	});
	return valid;
}

function isEmail(email) {
	var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	return regex.test(email);
}

function samePasswords() {
	var password = $('#password').val();
	var passwordConfirm = $('#password_confirmation').val();
	return password == passwordConfirm;
}

function showError(name) {
	$('#' + name).parent().attr('class', 'form-group has-error');
	$('#' + name + '_error').attr('class', 'help-block');
}

function hideError(name) {
	$('#' + name).parent().attr('class', 'form-group');
	$('#' + name + '_error').attr('class', 'help-block hide');
}