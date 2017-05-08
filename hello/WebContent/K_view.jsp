<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>viewPage</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.container img {
	margin: 0 auto;
}

.affix {
	top: 0;
	width: 360px;
}
</style>
</head>
<body>
	<jsp:include page="Y_NavBar.jsp"></jsp:include>
	
	
	<!-- ���󿵺󿵺󿵺󿵺󿵺󿵺󿵺� -->
	<%
	String y_pronum = request.getParameter("pronum");
	%>
	<a href="Y_First_Insert.jsp?pronum=<%=y_pronum %>">��û�ϱ�</a>
	<!-- ���󿵺󿵺󿵺󿵺󿵺󿵺󿵺� -->
	
	
	<jsp:useBean id="sel" class="com.openmarket.Capstone_productDAO"></jsp:useBean>
	<%
		ArrayList<String> al = sel.selectProduct();
		String type = al.get(4);
		if(type.equals("rent")){
			type="�뿩";
			%>
				<script>
				$(document).ready(function() {
					$(".panel-rent").show();
					$(".panel-sale").hide();
				});
				</script>
			<%
		}else if(type.equals("sale")){
			type="�Ǹ�";
			%>
				<script>
				$(document).ready(function() {
					$(".panel-sale").show();
					$(".panel-rent").hide();
				});
				</script>
			<%
		}
	%>
	<jsp:useBean id="se" class="com.openmarket2.Capstone_productDAO"></jsp:useBean>
	<%
		ArrayList<String> al2 = se.selectImage();
		String img1 = ""+al2.get(0);
		String img2 = ""+al2.get(1);
		String img3 = ""+al2.get(2);
		String img4 = ""+al2.get(3);
	%>
	
	
	<br />

	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<mark>ī�װ�</mark><h3><%= al.get(9) %></h3>
			</div>
			<div class="col-lg-3">
				<mark>�ŷ�����</mark><h3><%= type %></h3>
			</div>
			<div class="col-lg-6">
				<mark>����</mark><h3><%= al.get(0) %></h3>
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-lg-7">
			<!-- 
				<img class="img-responsive" src="" alt="Chania" width="600"
					height="400">
				 -->	
					
					
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="<%= img1 %>" alt="img1">
    </div>

    <div class="item">
      <img src="<%= img2 %>"alt="img2">
    </div>

    <div class="item">
      <img src="<%= img3 %>" alt="img3">
    </div>
    
    <div class="item">
      <img src="<%= img4 %>" alt="img4">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


			</div>
			<div class="col-lg-4">
				<div class="panel panel-default panel-rent" data-spy="affix"
					data-offset-top="360">
					<div class="panel-heading">
					<%
						int renprice = Integer.parseInt(al.get(5));
						int deposit = Integer.parseInt(al.get(7));
					%>
						<h1 class="text-center"><%= (renprice+deposit) +"��" %></h1>
						<br>
						<p class="text-center">
							<small> �뿩�� <%= renprice %>(1��) + ������ <%=deposit %> </small>
						</p>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>���</th>
										<th>����</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><label for="fee">�뿩�� : </label></td>
										<td> <%= al.get(5) %><small>/1��</small></td>
									</tr>
									<tr>
										<td><label for="deposit">������ : </label></td>
										<td><%= al.get(7) %></td>
									</tr>
									<tr>
										<td><label for="possibleDay">�뿩���� �ϼ� : </label></td>
										<td><%= al.get(6) %></td>
									</tr>
									<tr>
										<td><label for="tradeWay">�ŷ���� : </label></td>
										<td>

										<label class="radio-inline"><input
												type="radio" name="wayRadio">���ŷ�</label>

										<label
											class="radio-inline"><input type="radio"
												name="wayRadio">�ù�</label>
												</td>
									</tr>
								</tbody>
							</table>
							<input type="submit" class="btn btn-primary btn-lg btn-block" value="��û�ϱ�"> 
							<input type="submit" class="btn btn-default btn-lg btn-block" value="���ϱ�">
						</div>
						<!-- form �� �� -->

					</div>
				</div>
				<!-- �Ǹ��г� -->
				<div class="panel panel-default panel-sale" data-spy="affix"
					data-offset-top="360">
					<div class="panel-heading">
					<%
						int salprice = Integer.parseInt(al.get(8));
					%>
						<h1 class="text-center"><%= (salprice) +"��" %></h1>
						<br>
						<p class="text-center">
							<small> �Ǹűݾ� <%= salprice %></small>
						</p>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>���</th>
										<th>����</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><label for="fee">�Ǹűݾ� : </label></td>
										<td> <%= al.get(8) %></td>
									</tr>
									<tr>
										<td><label for="tradeWay">�ŷ���� : </label></td>
										<td>

										<label class="radio-inline"><input
												type="radio" name="wayRadio">���ŷ�</label>

										<label
											class="radio-inline"><input type="radio"
												name="wayRadio">�ù�</label>
												</td>
									</tr>
								</tbody>
							</table>
							<input type="submit" class="btn btn-primary btn-lg btn-block" value="��û�ϱ�"> 
							<input type="submit" class="btn btn-default btn-lg btn-block" value="���ϱ�">
						</div>
						<!-- form �� �� -->

					</div>
				</div>
			</div>
		</div>
		<!--2 img , panel row's end -->
		<div class="row">
			<br>
			<br>

			<div class="col-lg-7">
				<div class="panel panel-default">
					<div class="panel-body">
						<h1>�󼼳���</h1>
						<table class="table">
							<thead>
								<tr>
									<th>���</th>
									<th>����</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>��ǰ���� :</td>
									<td><%= al.get(2) %></td>
								</tr>
								<tr>
									<td>��ǰ���� :</td>
									<td><%= al.get(1) %></td>
								</tr>
							</tbody>
						</table>

					</div>
				</div>
			</div>
			<div class="col-lg-5"></div>
		</div>
		
	</div>
	<div class="container-fluid">
			<h1>FOOTER SPACE</h1>
			<p>This space belong to space for FOOTER.</p>
	</div>
</body>
</html>