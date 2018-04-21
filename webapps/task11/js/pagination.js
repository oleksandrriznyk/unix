
(function(expCharsToEscape, expEscapedSpace, expNoStart, undefined) {

  modURLParam = function(url, paramName, paramValue) {
    paramValue = paramValue != undefined
      ? encodeURIComponent(paramValue).replace(expEscapedSpace, '+')
      : paramValue;
    var pattern = new RegExp(
      '([?&]'
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
//	var page = setParam('page', "");
	paginator_example = new Paginator(
		"paginator_example",
		pagesCount,
		5, // pages count that can be visible
		page,
		url
	);