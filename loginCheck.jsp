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
	<main>
        <div class="formContainer" id="confForm">
            <h2>Error al intentar iniciar sesion, intentelo de nuevo</h2>
            <img src="./img/survey.png" alt="imagen de confirmacion">
            <a href="LoginRegister.html"><button>Volver a login</button></a>
        </div>
    </main>

	<%
		String nombre = request.getParameter("nombre");
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
	    else{
	    	out.println("Usuario incorrecto <br>");
	    }
		
	}catch (Exception e){
        out.println("An error occurred: " + e.getMessage());
        e.printStackTrace();
	}
	%>
</body>
</html>