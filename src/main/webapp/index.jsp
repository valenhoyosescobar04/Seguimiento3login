<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Página de Inicio de Sesión</title>
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

        .error-message {
            color: #FF5A92FF; /* Cambiado a un tono violeta suave */
            text-align: center;
            margin-top: 1rem;
            font-size: 1.1rem;
            padding: 0.5rem;
            border: 1px solid #ff5a92; /* Bordes en rosado */
            border-radius: 4px;
            background-color: #ffe6f2; /* Fondo en un rosado muy claro */
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>INICIO DE SESIÓN</h1>

    <!-- Mostrar mensaje de error si existe -->
    <%
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null) {
    %>
    <div class="error-message">
        <%= errorMessage %>
    </div>
    <%
        }
    %>

    <form action="RecibeDatos" method="post">
        <div>
            <label for="textUsuario">Usuario:</label>
            <input type="text" name="textUsuario" id="textUsuario" required>
        </div>
        <div>
            <label for="textContraseña">Contraseña:</label>
            <input type="password" name="textContraseña" id="textContraseña" required>
        </div>
        <hr>
        <input type="reset" value="Borrar">
        <input type="submit" value="Enviar">
    </form>

    <div class="form-link">
        <a href="registro.jsp">¿No tienes una cuenta? Regístrate</a>
    </div>
</div>
</body>
</html>
