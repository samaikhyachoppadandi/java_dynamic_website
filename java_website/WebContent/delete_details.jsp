<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="mentors.database.*,java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

<form action="delete.jsp" method="post">
		E-mail:<input type="text" name="email" value="" placeholder="E-mail Address"><br>
		<p class="submit"><input type="submit" name="commit" value="Delete"></p>
	
	</form>

</body>
</html>