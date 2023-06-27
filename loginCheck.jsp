<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String nombre = request.getParameter("nombre");
		String contrasena = request.getParameter("contrasena");
	%>
	
	<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/solo_ciencia","root","");
    Statement dbstatement = dbconect.createStatement();
    
	try{
	    PreparedStatement consultaP = dbconect.prepareStatement("SELECT * FROM usuarios WHERE NOMBRE =? AND CONTRASENA =?");
	    consultaP.setString(1,nombre);
	    consultaP.setString(2,contrasena);
	    
	    ResultSet resultado = consultaP.executeQuery();
	    if(resultado.next()){
	    
	    }
	    else{
	    	
	    }
		
	}catch (Exception e){
		
	}
	%>
</body>
</html>