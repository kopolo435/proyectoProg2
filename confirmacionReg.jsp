<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro exitoso</title>
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="img/ICON.ico">
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
    </header>
    <nav>
        <ul class="mainMenu">
            <li><a href="home.html">Home</a></li>
            <li><a href="formNatural.html">Registrarse en el Curso de Ciencias Naturales</a></li>
            <li><a href="formQuiBio.html">Registrarse en el Curso de Quimica y Biologia</a></li>
            <li><a href="formProg.html">Registrarse en el Curso de programacion</a></li>
            <li><a href="Referencias.html">Referencias</a></li>
            <li><a href="Conocenos.html">Cont�ctanos</a></li>
        </ul>
    </nav>
    <main>
        <div class="formContainer" id="confForm">
            <h2>Registro exitoso</h2>
            <img src="./img/survey.png" alt="imagen de confirmacion">
            <a href="home.html"><button>Volver A Home</button></a>
        </div>
    </main>
    <footer>
        <ul class="footerMenu">
            <li><a href="home.html">Home</a></li>
            <li><a href="formNatural.html">Registrarse en el Curso de Ciencias Naturales</a></li>
            <li><a href="formQuiBio.html">Registrarse en el Curso de Quimica y Biologia</a></li>
            <li><a href="formProg.html">Registrarse en el Curso de programacion</a></li>
            <li><a href="Referencias.html">Referencias</a></li>
            <li><a href="Conocenos.html">Cont�ctanos</a></li>
        </ul>
        <p>Mensaje de copyright</p>
        <div class="logoutContainer">
            <a href="LoginRegister.html">Logout</a>
        </div>
    </footer>

    <%
    //Declaracion y asignacion de valores a variables que reciben datos del formulario
     String nombre = request.getParameter("nombre"); 
     String cedula = request.getParameter("cedula");
     String fecha = request.getParameter("fecha");
     String curso = request.getParameter("curso");
    %>

    <%
    //Conexion a la base de datos
    Class.forName("com.mysql.jdbc.Driver");
    Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/solo_ciencia","root","");
    Statement dbstatement = dbconect.createStatement();
    String insertarsql = "";
    if (curso.equals("Ciencias Naturales")){ 
         insertarsql = "INSERT INTO datonaturales(nombre,cedula,fecha_inicio) VALUES ('"+nombre+"','"+cedula+"','"+fecha+"')";
    }
    else if (curso.equals("programacion"))
    {
         insertarsql = "INSERT INTO datosprog(nombre,cedula,fecha_inicio) VALUES ('"+nombre+"','"+cedula+"','"+fecha+"')";
    }
    else{
         insertarsql = "INSERT INTO datosqui_bio(nombre,cedula,fecha_inicio) VALUES ('"+nombre+"','"+cedula+"','"+fecha+"')";
    }
    dbstatement.executeUpdate(insertarsql);
    %>
</body>
</html>