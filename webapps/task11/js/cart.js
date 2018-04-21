$(document).ready(function() {
    $('[name="increase_count"]').click(function() {
        var id = $(this).attr("product_id");
        sendUpdateJson(id, "increase");
    });

    $('[name="decrease_count"]').click(function() {
        var id = $(this).attr("product_id");
        sendUpdateJson(id, "decrease");
    });

    function sendUpdateJson(id, type) {
        var count = $("[name='count_field_" + id + "']").val();

        $.ajax({
            url: "updateCount",
            type: 'POST',
            data: {
                type: type,
                productId: id
            },
            dataType: "json",
            success: function(response) {
                updateProduct(response);
            }
        });
    }

    $('#clear_cart_button').click(function() {
        $.ajax({
            url: 'clearCart',
            type: 'GET',
            data: {
                clearCart: true
            },
            dataType: "json",
            success: function(response) {
                $("[name='total_price']").text(response.totalPrice);
                $("#products_table > tbody").html("");
            }
        });
        location.reload();
    });

    function updateProduct(response) {
        var productId = response.productId;
        var count = response.count;
        var totalPrice = response.totalPrice;

        $("[name='count_field_" + productId + "']").val(count);
        var price = $("[name='price_" + productId + "']").text();
        $("[name='total_price_" + productId + "']").text(count * price);
        $("[name='total_price']").text(totalPrice);
    }

    $('[name="remove"]').click(function() {
        console.log("remove");
        var id = $(this).attr("product_id");
        $.ajax({
            url: "removeProduct",
            type: 'POST',
            data: {
                productId: id
            },
            dataType: "json",
            success: function(response) {
                if (response.isRemoved) {
                    console.log("removed from server");
                    $("[name='row_" + id + "']").remove();
                    $("[name='total_price']").text(response.totalPrice);
                }
            }
        });
    });
});