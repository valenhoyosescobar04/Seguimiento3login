<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registro exitoso</title>
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
            text-align: center;
        }

        h1 {
            color: #333;
        }

        p {
            color: #555;
        }

        a {
            display: block;
            margin-top: 1rem;
            color: #af53fa;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>¡Registro Exitoso!</h1>
    <p><%= request.getAttribute("mensaje") %></p>
    <p>Ahora puedes iniciar sesión desde aquí:</p>
    <a href="index.jsp">Iniciar sesión</a>
</div>
</body>
</html>
