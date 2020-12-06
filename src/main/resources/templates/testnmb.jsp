<!DOCTYPE html>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
spring
<!-- Global site tag (gtag.js) - Google Analytics -->
<script>
    if (!document.getElementById('Gtrack')){
    document.write(  "<script id=\"Gtrack"+"\" async src=\"https://www.googletagmanager.com/gtag/js?id=" + sessionStorage.getItem("GTrackingId") + "\"><" + "/script>" );
    }
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', sessionStorage.getItem("GTrackingId"));
</script>
<script
	src="https://test-nmbbank.mtf.gateway.mastercard.com/checkout/version/57/checkout.js"
	data-error="errorCallback" data-cancel="cancelCallback"></script>
<script type="text/javascript">
    	window.onload = function() {
    		document.getElementById('payNow').click();
    	}
</script>
<script type="text/javascript">
    	function errorCallback(error) {
    		console.log(JSON.stringify(error));
    	}
    	function cancelCallback() {
    		console.log('Payment cancelled');
    	}
    	Checkout.configure({
    		session : {
    			id : document.getElementById('sessionId').value
    		},
    		interaction : {
    			merchant : {
    				name : 'GEPG TZ',
    				address : {
    					line1 : 'ILALA',
    					line2 : 'DAR ES SALAAM'
    				}
    			}
    		}
    	});
    </script>
</head>

<Body>
	<form>
		<input name="session_id" id="sessionId" type="hidden"
			value="${pojo.getNMBRequestParam().getSessionId()}" /> <input
			type="button" id="payNow" value="Pay with Payment Page"
			onclick="Checkout.showPaymentPage();" />
	</form>
</Body>
