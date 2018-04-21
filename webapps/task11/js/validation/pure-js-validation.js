function isValidForm() {
			var error = false;

			// validate first name
			var firstName = document.getElementById("first_name").value;
			if (!firstName || firstName.length <= 3) {
				showError("first_name");
				error = true;
			} else {
				hideError("first_name");
			}

			// validate last name
			var lastName = document.getElementById("last_name").value;
			if (!lastName || lastName.length <= 3) {
				showError("last_name");
				error = true;
			} else {
				hideError("last_name");
			}

			//validate email
			var email = document.getElementById("email").value;

			if (!email || !isEmail(email)) {
				showError("email");
				error = true;
			} else {
				hideError("email");
			}

			//validate passwords
			var password = document.getElementById("password").value;
			if (!password || password.length <= 3) {
				showError("password");
				error = true;
			} else {
				hideError("password");
			}

			var passwordConfirm = document.getElementById("password_confirmation").value;
			if (!password || password != passwordConfirm) {
				showError("password_confirmation");
				error = true;
			} else {
				hideError("password_confirmation");
			}

			return !error;
		}

		function isEmail(email) {
			var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			return regex.test(email);
		}

		function showError(elementId) {
			document.getElementById(elementId).parentNode.setAttribute("class", "has-error");
			document.getElementById(elementId + "_error").setAttribute("class", "help-block");
		}

		function hideError(elementId) {
			document.getElementById(elementId).parentNode.setAttribute("class", "form-group");
			document.getElementById(elementId + "_error").setAttribute("class", "help-block hide");
		}