<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="login.css" />
  <link rel="icon" href="img/ICON.ico">
</head>
<body>
  <center><img src="img/Logo.png" alt="Logo de SOLOCIENCIA" class="logo"></center>
	<main>
        <div class="formContainer" id="confForm">
            <h2>Error al intentar iniciar sesion, intentelo de nuevo</h2>
            <img src="./img/survey.png" alt="imagen de confirmacion">
            <a href="LoginRegister.html"><button>Volver a login</button></a>
        </div>
    </main>

	<%
		String usuario = request.getParameter("usuario");
		String contrasena = request.getParameter("contrasena");
	%>
	
	<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/solo_ciencia","root","");
    Statement dbstatement = dbconect.createStatement();
	try{
	    PreparedStatement consultaP = dbconect.prepareStatement("SELECT * FROM usuarios WHERE USUARIO	 =? AND CONTRASENA =?");
	    consultaP.setString(1,usuario);
	    consultaP.setString(2,contrasena);
	    
	    ResultSet resultado = consultaP.executeQuery();
	    if(resultado.next()){
	    	response.sendRedirect("home.html");
	    }
		
	}catch (Exception e){
        out.println("An error occurred: " + e.getMessage());
        e.printStackTrace();
	}
	%>
</body>
</html>