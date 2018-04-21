<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vehicle shop - All products.</title>

<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/shop-homepage.css" rel="stylesheet">

<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/validation.jquery.js"></script>
<script src="js/products.js"></script>

<link rel="stylesheet" type="text/css" href="css/pagination3000.css" />
<script type="text/javascript" src="js/paginator3000.js"></script>

</head>

<body>

<%@include file="/WEB-INF/jspf/header.jspf" %>

<!-- Page Content -->
<div class="container">
	<div class="row">

<%@include file="/WEB-INF/jspf/main_menu.jspf" %>

<div class="col-md-9">

<div class="row">
<br/><br/>


<c:if test="${fn:length(products) lt 1}">
<div class="col-xs-12 col-sm-8 col-md-4  col-md-offset-4">
	<div align="center" class="alert alert-danger" role="alert">
	 	Products not found
	</div>
</div>
</c:if>



<c:forEach items="${products}" var="item">
<div class="col-sm-4 col-lg-4 col-md-4">
	<div class="thumbnail">
		<div style="padding:5px;">
			<img src="img/products/${item.image}" alt="">
		</div>
        <div class="caption">
        	<h4><a href="#">${item.name}</a></h4>
		<p>
			<b>Price: </b>${item.price} $<br/>
			<b>Creation year: </b>${item.year}<br/>
			<b>Weight: </b>${item.weight} kg								
			<t:add_to_cart product_id="${item.id}"/>
		</p>
        </div>
    </div>
</div>
</c:forEach>
</div>
				
<!-- ------------------------ Pagination -------------------------- -->
<c:if test="${fn:length(products) gt 0}">
	<%@include file="/WEB-INF/jspf/pagination.jspf" %>
</c:if>
</div>
</div>
</div>
<!-- /.container -->
<div class="container">
<hr>
<!-- Footer -->
<%@include file="/WEB-INF/jspf/footer.jspf" %>

</div>
<!-- /.container -->

<!-- jQuery Version 1.11.0 -->
<script src="js/jquery-1.11.0.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript">
var categories = [
<c:forEach var="item" items="${filter.categories}" varStatus="loop">
	"${item}"
	<c:if test="${!loop.last}">,</c:if>
</c:forEach>
]

$("input:checkbox[name=category]").each(function() {
	if ($.inArray($(this).val(), categories) != -1) {
		$(this).attr("checked","checked");
	}
});

var marks = [
	<c:forEach var="item" items="${filter.marks}" varStatus="loop">
		"${item}"
		<c:if test="${!loop.last}">,</c:if>
    </c:forEach>
]

$("input:checkbox[name=mark]").each(function() {
	if ($.inArray($(this).val(), marks) != -1) {
		$(this).attr("checked","checked");
	}
});

var limit = '${filter.limit}';
$(function() {
	$("#limit").val(limit);
});

var priceFrom = '${filter.priceFrom}';
var priceTo = '${filter.priceTo}';
	$(function() {
    	$("#priceFrom").val(priceFrom);
        $("#priceTo").val(priceTo);
    });

var sortBy = '${filter.sortBy}';
$(function() {
	$("#sortBy").val(sortBy);
});

var sortType = '${filter.sortType}';
$(function() {
	var $radios = $('input:radio[name=sortType]');
    	if($radios.is(':checked') === false) {
        	$radios.filter('[value='+sortType+']').prop('checked', true);
		}
});
</script>

<script type="text/javascript">
(function(expCharsToEscape, expEscapedSpace, expNoStart, undefined) {
  modURLParam = function(url, paramName, paramValue) {
    paramValue = paramValue != undefined
      ? encodeURIComponent(paramValue).replace(expEscapedSpace, '+')
      : paramValue;
    var pattern = new RegExp('([?&]'
      + paramName.replace(expCharsToEscape, '\\$1')
      + '=)[^&]*'
    );
    if(pattern.test(url)) {
      return url.replace(
        pattern,
        function($0, $1) {
          return paramValue != undefined ? $1 + paramValue : ''; 
        }
      ).replace(expNoStart, '$1?');
    }
    else if (paramValue != undefined) {
      return url + (url.indexOf('?') + 1 ? '&' : '?')
        + paramName + '=' + paramValue;
    }
    else {
      return url;
    }
  };
})(/([\\\/\[\]{}().*+?|^$])/g, /%20/g, /^([^?]+)&/);

var url = window.location.href;
url = modURLParam(url, 'page', '');

function updateQueryStringParameter(uri, key, value) {
	var re = new RegExp("([?&])" + key + "=.*?(&|$)", "i");
	var separator = uri.indexOf('?') !== -1 ? "&" : "?";
	if (uri.match(re)) {
		return uri.replace(re, '$1' + key + "=" + value + '$2');
	} else {
	   	return uri + separator + key + "=" + value;
	}
}
	var page = '${filter.page}';
	var pagesCount = '${filter.pagesCount}';
	console.log(page);
	var url = updateQueryStringParameter(window.location.href, 'page', '');
	paginator_example = new Paginator("paginator_example", pagesCount, 5, page, url);
</script>
</body>

</html>