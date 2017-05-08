<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
Object id = session.getAttribute("id");
Class.forName("com.mysql.jdbc.Driver");
try{
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://localhost/BillyU",
			"root",
			"1234");
	Statement stmt = conn.createStatement();
	String sql="select * from product where nickname = '"+id+"'";
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next())
	{
		int pronum = rs.getInt("pronum");
		out.println(pronum);
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>