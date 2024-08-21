<%@ page import="co.edu.cue.seguimiento3.Usuario" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Mostrar Datos</title>
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

        h1, h2, h3 {
            text-align: center;
            color: #333;
        }

        p {
            color: #555;
            margin-bottom: 1rem;
        }

        .form-container p {
            text-align: center;
        }

        input[type="submit"] {
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

        input[type="submit"]:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>Datos del Usuario</h1>
    <p><strong>Usuario:</strong> <%= ((Usuario) request.getAttribute("usuario")).getUsuario() %></p>
    <p><strong>Contraseña:</strong> <%= ((Usuario) request.getAttribute("usuario")).getContraseña() %></p>

    <hr>
    <h2>Directivas JSP:</h2>
    <h3>La directiva page:</h3>
    <p>Define los atributos generales de la página como language, extends, import, session, buffer, entre otros.</p>

    <h3>La directiva taglib:</h3>
    <p>Se utiliza para definir una biblioteca de etiquetas personalizadas en JSP. Atributos principales: uri, prefix.</p>

    <h3>La directiva include:</h3>
    <p>Permite incluir contenido de otra página JSP o archivo en la página actual. Atributos: file.</p>

    <form action="index.jsp" method="post">
        <input type="submit" value="Regresar">
    </form>
</div>
</body>
</html>
