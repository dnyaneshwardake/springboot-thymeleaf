<!DOCTYPE html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
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
<style>
/* Center the loader */
#loader {
  position: absolute;
  left: 50%;
  top: 50%;
  z-index: 1;
  width: 150px;
  height: 150px;
  margin: -75px 0 0 -75px;
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

@-webkit-keyframes animatebottom {
  from { bottom:-100px; opacity:0 }
  to { bottom:0px; opacity:1 }
}

@keyframes animatebottom {
  from{ bottom:-100px; opacity:0 }
  to{ bottom:0; opacity:1 }
}
</style>

</head>

<Body>
    <div id="loader"></div>
	<form action="https://mymarket/payment/complete" method="POST">
      <script src="https://beta.mypaga.com/checkout/?w=150&h=40"
        data-charge_url="https://mymarket/payment/complete"
        data-public_key="B63F8C7E-D453-4B89-AC5C-40843AD3FA1E"
        data-amount="1000.00"
        data-currency="NGN"
        data-payment_reference="JHX-18743567"
        data-account_number="41007258779"
        data-product_description="Gelly Giraffe"
        data-phone_number="+251911514855"
        data-email="customer@mymarket.com"
        data-product_codes="XBR-652394"
        data-display_image="https://mymarket/cdn//img/icon.png"
        data-display_name="Shem’s Shoes"
        data-display_tagline="Walk the Talk"
        data-button_label="Pay With Paga"
        data-width="200"
        data-funding_sources="BANK,CARD,PAGA">
      </script>
    </form>
</Body>
