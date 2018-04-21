<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ attribute name="product_id" required="true" type="java.lang.String"%>

<button class="btn btn-sm btn-default pull-right" name="add_to_cart_button" product_id="${product_id}"> Add to cart</button>