<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ attribute name="image" required="true" type="java.lang.String"%>
<%@ attribute name="captcha_input_name" required="true"
	type="java.lang.String"%>
<%@ attribute name="hidden_field_name" required="false"
	type="java.lang.String"%>
<%@ attribute name="image_id" required="false" type="java.lang.String"%>

<c:choose>
	<c:when test="${captchaId ne null}">
		<input type="hidden" name="${hidden_field_name}" value="${captchaId}" />
	</c:when>
</c:choose>

<div class="form-group">
	<table style="width: 100%;">
		<tr>
			<td><img src="${image}?${hidden_field_name}=${captchaId}" /></td>
			<td><input name="${captcha_input_name}" class="form-control"
				placeholder="Captcha"></td>
		</tr>
	</table>
</div>