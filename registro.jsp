<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="ISO-8859-1">
	<title>Registro exitoso</title>
	<link rel="stylesheet" href="style.css">
	<link rel="icon" href="img/ICON.ico">
	<meta charset="UTF-8">
</head>
<body>
    <header>
        <img src="img/Logo.png" alt="Logo de la Pagina" class="logoContainer">
        <div class="socialContainer">
            <div >
                <a href="https://www.google.com/"><iconify-icon icon="ic:baseline-search" style="color: white;" width="45" height="45"></iconify-icon></a>
            </div>
            <div>
                <a href="https://twitter.com/solociencia_01?t=nWcv_JfVLpWt4TRDcfz8Qg&s=09"><iconify-icon icon="ri:twitter-line" style="color: white;" width="45" height="45"></iconify-icon></a>
            </div>
            <div>
                <a href="https://www.instagram.com/solociencia_01/"><iconify-icon icon="mdi:instagram" style="color: white;" width="45" height="45"></iconify-icon></a>
            </div>
        </div>
        </div>
    </header>
    <nav>
        <ul class="mainMenu">
            <li><a href="home.html">Home</a></li>
            <li><a href="formNatural.html">Registrarse en el Curso de Ciencias Naturales</a></li>
            <li><a href="formQuiBio.html">Registrarse en el Curso de Quimica y Biologia</a></li>
            <li><a href="formProg.html">Registrarse en el Curso de programacion</a></li>
            <li><a href="">Referencias</a></li>
            <li><a href="">Contactanos</a></li>
        </ul>
    </nav>
    <main>
        <div class="formContainer" id="confForm">
            <h2>Registro exitoso</h2>
            <img src="./img/survey.png" alt="imagen de confirmacion">
            <a href="home.html"><button>Ingresar A login para logearse</button></a>
        </div>
    </main>
    <footer>
        <ul class="footerMenu">
            <li><a href="home.html">Home</a></li>
            <li><a href="formNatural.html">Registrarse en el Curso de Ciencias Naturales</a></li>
            <li><a href="formQuiBio.html">Registrarse en el Curso de Quimica y Biologia</a></li>
            <li><a href="formProg.html">Registrarse en el Curso de programacion</a></li>
            <li><a href="">Referencias</a></li>
            <li><a href="">Contactanos</a></li>
        </ul>
        <p>Mensaje de copyright</p>
        <div class="logoutContainer">
            <a href="LoginRegister.html">Logout</a>
        </div>
    </footer>

    <%
    //Declaracion y asignacion de valores a variables que reciben datos del formulario
     String nombre = request.getParameter("nombre"); 
     String apellido = request.getParameter("apellido");
     String edad = request.getParameter("edad");
     String contrasena = request.getParameter("contrasena");
     String usuario = request.getParameter("usuario");
    %>

<%
try {
    //Conexion a la base de datos
    Class.forName("com.mysql.jdbc.Driver");
    Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/solo_ciencia","root","");
    Statement dbstatement = dbconect.createStatement();
    String insertarsql = "INSERT INTO usuarios(usuario,nombre,apellido,edad,contrasena) VALUES ('"+usuario+"','"+nombre+"','"+apellido+"','"+edad+"','"+contrasena+"')";
    
    // inserta los datos
    dbstatement.executeUpdate(insertarsql);
    
    // cierra la conexion
    dbstatement.close();
    dbconect.close();
    response.sendRedirect("LoginRegister.html");
} catch (Exception e) {
    // Muestra mensaje de error
    e.printStackTrace();
}
%>

</body>
</html>