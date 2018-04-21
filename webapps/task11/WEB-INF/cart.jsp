<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Vehicle shop - My cart.</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/shop-homepage.css" rel="stylesheet">
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/cart.js"></script>
  </head>
  <body>
    <%@include file="/WEB-INF/jspf/header.jspf"%>
    <!-- Page Content -->
    <div class="container">
      <div class="row">
        <div class="row">
          <br /> <br />
          <c:choose>
            <c:when test="${fn:length(productsInfo) lt 1}">
              <div class="col-xs-12 col-sm-8 col-md-4  col-md-offset-4">
                <div align="center" class="alert alert-danger" role="alert">
                  Your cart is empty
                </div>
                <a href="products" type="button" class="btn btn-default">Go to the main page</a>
              </div>
            </c:when>
            <c:otherwise>
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h3>Shoping Cart</h3>
                </div>
                <div class="panel-body">
                  <div class="row">
                    <div class="col-12 col-lg-12">
                      <table id="products_table" class="table table-striped">
                        <thead>
                          <tr>
                            <th width="10%">Image</th>
                            <th width="30%">Name</th>
                            <th width="30%">Quantity</th>
                            <th width="10%">Price</th>
                            <th width="10%">Total</th>
                            <th width="10%">Actions</th>
                          </tr>
                        </thead>
                        <tbody>
                        
<c:forEach items="${productsInfo}" var="item" varStatus="status">
  <tr name="row_${item.productId}">
    <td style="vertical-align: middle">
      <div style="padding: 5px;">
        <img width="100" src="img/products/${products[status.index].image}" alt="">
      </div>
    </td>
    <td style="vertical-align: middle">${products[status.index].name}</td>
    <td style="vertical-align: middle">
      <div class="input-group" style="padding-right: 100px;">
        <span class="input-group-btn">
        <button type="button" class="btn btn-danger btn-number" name="decrease_count" product_id="${item.productId}" data-type="minus" >
        	<span class="glyphicon glyphicon-minus"></span>
        </button>
        </span>
        <input type="text" name="count_field_${item.productId}" class="form-control input-number" readonly value="${item.count}" min="1" max="10">
          <span class="input-group-btn">
        <button type="button" class="btn btn-success btn-number" name="increase_count" product_id="${item.productId}" data-type="plus">
          <span class="glyphicon glyphicon-plus"></span>
        </button>
        </span>
      </div>
    </td>
    <td style="vertical-align: middle">
      <span name="price_${item.productId}">${item.price}</span> $</td>
    <td style="vertical-align: middle">
      <span name="total_price_${item.productId}">${item.count * item.price}</span> $
    </td>
    <td style="vertical-align: middle">
      <button class="btn btn-sm btn-danger" name="remove" product_id="${item.productId}">
      	<i class="glyphicon glyphicon-remove"></i> Remove
      </button>
    </td>
  </tr>
</c:forEach>
                        </tbody>
                      </table>
                      <hr>
                      <dl class="dl-horizontal pull-right">
                        <dt>Total cost:</dt>
                        <dd>
                          <span name="total_price">${totalPrice}</span> $
                        </dd>
                      </dl>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                </div>
                <div class="panel-footer">
                  <div class="row">
                    <div class="col-lg-12">
                      <button id="clear_cart_button" style="margin-rigth: 20px;"
                        class="btn btn-danger">
                      <i class="glyphicon glyphicon-remove"></i> Clear cart
                      </button>
                      <c:choose>
                        <c:when test="${user eq null}">
                          <button class="btn btn-success pull-right disabled">
                          <i class="glyphicon glyphicon-ok"></i> Please log in to perform the order
                          </button>
                        </c:when>
                        <c:otherwise>
                          <a class="btn btn-success pull-right" href="orderCredentials"> <i class="glyphicon glyphicon-ok"></i> Perform the order</a>
                        </c:otherwise>
                      </c:choose>
                    </div>
                  </div>
                </div>
              </div>
            </c:otherwise>
          </c:choose>
        </div>
      </div>
    </div>
    <!-- /.container -->
    <div class="container">
      <hr>
      <!-- Footer -->
      <%@include file="/WEB-INF/jspf/footer.jspf"%>
    </div>
    <!-- /.container -->
  </body>
</html>