<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro exitoso</title>
</head>
<body>
    <header>
        <div class="logoContainer">
            <img src="" alt="Logo de la Pagina">
        </div>
        <div class="socialContainer">
            <div class="social">
                <img src="" alt="busqueda">
            </div>
            <div class="social">
                <img src="" alt="Icono de facebook">
            </div>
            <div>
                <img src="" alt="Icono de instagram">
            </div>
        </div>
    </header>
    <nav>
        <ul class="mainMenu">
            <li><a href="home.html">Home</a></li>
            <li><a href="formNatural.html">Registrarse en el Curso de Ciencias Naturales</a></li>
            <li><a href="formQuiBio.html">Registrarse en el Curso de Química y Biología</a></li>
            <li><a href="formProg.html">Registrarse en el Curso de programación</a></li>
            <li><a href="">Referencias</a></li>
            <li><a href="">Contáctanos</a></li>
        </ul>
    </nav>
    <main>
        <div class="formContainer">
            <h2>Registro exitoso</h2>
            <a href="home.html"><button>Volver A Home</button></a>
        </div>
    </main>
    <footer>
        <ul class="footerMenu">
            <li><a href="home.html">Home</a></li>
            <li><a href="formNatural.html">Registrarse en el Curso de Ciencias Naturales</a></li>
            <li><a href="formQuiBio.html">Registrarse en el Curso de Química y Biología</a></li>
            <li><a href="formProg.html">Registrarse en el Curso de programación</a></li>
            <li><a href="">Referencias</a></li>
            <li><a href="">Contáctanos</a></li>
        </ul>
        <p>Mensaje de copyright</p>
        <div class="logoutContainer">
            <a href="">Logout</a>
        </div>
    </footer>

    <%
    //Declaracion y asignacion de valores a variables que reciben datos del formulario
     String nombre = request.getParameter("nombre"); 
     String cedula = request.getParameter("cedula");
     String materia = request.getParameter("fecha");
    %>

</body>
</html>