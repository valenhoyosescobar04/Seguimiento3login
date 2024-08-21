<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registro de Usuario</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: #f5f5f5;
            margin: 0;
        }

        .form-container {
            background: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #555;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 0.5rem;
            margin-bottom: 1rem;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        input[type="submit"], input[type="reset"] {
            width: 100%;
            padding: 0.7rem;
            border: none;
            border-radius: 4px;
            background: linear-gradient(to right, #ff5a92, #af53fa);
            color: white;
            font-weight: bold;
            cursor: pointer;
            margin-top: 0.5rem;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            opacity: 0.9;
        }

        .form-link {
            text-align: center;
            margin-top: 1rem;
            color: #af53fa;
        }

        .form-link a {
            color: #af53fa;
            text-decoration: none;
        }

        .form-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>Registro de Nuevo Usuario</h1>
    <form action="Registro" method="post">
        <div>
            <label for="nombres">Nombres:</label>
            <input type="text" name="nombres" id="nombres">
        </div>
        <div>
            <label for="apellidos">Apellidos:</label>
            <input type="text" name="apellidos" id="apellidos">
        </div>
        <div>
            <label for="usuario">Usuario:</label>
            <input type="text" name="usuario" id="usuario">
        </div>
        <div>
            <label for="clave">Contraseña:</label>
            <input type="password" name="clave" id="clave">
        </div>
        <div>
            <label for="direccion">Dirección:</label>
            <input type="text" name="direccion" id="direccion">
        </div>
        <div>
            <label for="movil">Movil nro:</label>
            <input type="text" name="movil" id="movil">
        </div>
        <hr>
        <input type="reset" value="Borrar">
        <input type="submit" value="Registrar">
    </form>

    <% if (request.getAttribute("error") != null) { %>
    <p style="color:red;"><%= request.getAttribute("error") %></p>
    <% } %>

    <div class="form-link">
        <a href="index.jsp">¿Ya tienes una cuenta? Inicia sesión</a>
    </div>
</div>
</body>
</html>
