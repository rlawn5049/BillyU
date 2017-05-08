<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%@ page import="product.proDAO" %>
<%@ page import="product.proDTO" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="product_list" class="product.proDAO" />
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  /* Note: Try to remove the following lines to see the effect of CSS positioning */
  .affix {
      top: 20px;
  }
  </style>
</head>
<body>
<%
if(session.getAttribute("id") == null){
response.sendRedirect("Y_Login.jsp");}


%>  
<jsp:include page="Y_NavBar.jsp" />
<br />
<br />
<div class="container">
  <div class="row">
    <nav class="col-sm-3">
      <ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="205">
        <li><a id="#section1">내가 올린 상품</a></li>
        <li class="active"><a id="#section2">나에게 온 메일</a></li>
        <li><a id="#section3">신청대기 중인 상품</a></li>
        <li><a id="#section4">개인정보 수정</a></li>
      </ul>
    </nav>
  </div>
</div>
<div id="here"></div>
<script>
$('#section1').click(function(){
	$.ajax({
		type:"POST",
		url:"./Y_MyProduct.jsp",
		success:WhenSuccess,
		error:WhenError
	});
})
function WhenSuccess(resdata){
	$('#here').html(resdata);
}
function WhenError(){
	alert('error');
}
$('.nav-pills li').click(function(){
	$('.nav-pills li').removeClass('active');
	$(this).addClass('active');
});
</script>
</body>
</html>
