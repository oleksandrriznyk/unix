$(document).ready(function() {
	$.get('cartInfo', function(response) {
		updateCart(response);
	});

	$('[name="add_to_cart_button"]').click(function() {
		var id = $(this).attr("product_id");
		$.ajax({
			url : 'addToCart',
			type : 'GET',
			data : {
				productId : id
			},
			dataType : "json",
			success : function(response) {
				updateCart(response);
			}
		});
	});

	$('#clear_cart_button').click(function() {
		$.ajax({
			url : 'clearCart',
			type : 'GET',
			data : {
				clearCart : true
			},
			dataType : "json",
			success : function(response) {
				updateCart(response);
			}
		});
	});

	function updateCart(response) {
		console.log("Update cart:");
		console.log("count = " + response.productsCount);
		console.log("total price = " + response.totalPrice);
		$("#products_count").text(response.productsCount);
		$("#total_price").text(response.totalPrice);
	}
});