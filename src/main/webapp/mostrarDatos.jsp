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


    <form action="index.jsp" method="post">
        <input type="submit" value="Regresar">
    </form>

    <h1>Directivas JSP</h1>

    <h2>La directiva page</h2>
    <table border="1" cellspacing="0" cellpadding="5">
        <thead>
        <tr>
            <th>Aspecto</th>
            <th>Detalles</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>De qué trata</td>
            <td>La directiva <code>page</code> se utiliza para definir atributos relacionados con la página JSP, como el lenguaje, el manejo de sesiones, la codificación, entre otros.</td>
        </tr>
        <tr>
            <td>Atributos</td>
            <td>
                <ul>
                    <li><strong>language:</strong> Define el lenguaje de scripting utilizado (por defecto, Java).</li>
                    <li><strong>extends:</strong> Especifica una clase de la cual la página JSP debe extender.</li>
                    <li><strong>import:</strong> Permite importar clases Java.</li>
                    <li><strong>session:</strong> Define si la página usa sesiones (true o false).</li>
                    <li><strong>buffer:</strong> Tamaño del buffer del contenido (por defecto, 8KB).</li>
                    <li><strong>autoFlush:</strong> Indica si el buffer debe vaciarse automáticamente cuando esté lleno.</li>
                    <li><strong>isThreadSafe:</strong> Define si la página es segura para múltiples hilos (true o false).</li>
                    <li><strong>info:</strong> Proporciona una cadena de información sobre la página.</li>
                    <li><strong>errorPage:</strong> Especifica una página de error en caso de excepción.</li>
                    <li><strong>isErrorPage:</strong> Indica si la página es una página de error (true o false).</li>
                    <li><strong>contentType:</strong> Define el tipo de contenido de la respuesta (por ejemplo, text/html).</li>
                    <li><strong>pageEncoding:</strong> Especifica la codificación de caracteres para la página.</li>
                </ul>
            </td>
        </tr>
        </tbody>
    </table>

    <h2>La directiva taglib</h2>
    <table border="1" cellspacing="0" cellpadding="5">
        <thead>
        <tr>
            <th>Aspecto</th>
            <th>Detalles</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>De qué trata</td>
            <td>La directiva <code>taglib</code> se utiliza para declarar bibliotecas de etiquetas en JSP, especificando el prefijo y el URI de la biblioteca.</td>
        </tr>
        <tr>
            <td>Atributos</td>
            <td>
                <ul>
                    <li><strong>uri:</strong> El identificador único para la biblioteca de etiquetas.</li>
                    <li><strong>prefix:</strong> El prefijo utilizado para las etiquetas de la biblioteca en el JSP.</li>
                </ul>
            </td>
        </tr>
        </tbody>
    </table>

    <h2>La directiva include</h2>
    <table border="1" cellspacing="0" cellpadding="5">
        <thead>
        <tr>
            <th>Aspecto</th>
            <th>Detalles</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>De qué trata</td>
            <td>La directiva <code>include</code> se utiliza para incluir el contenido de otro archivo JSP o archivo de texto en la página actual durante la fase de compilación.</td>
        </tr>
        <tr>
            <td>Atributos</td>
            <td>
                <ul>
                    <li><strong>file:</strong> Especifica la ruta del archivo que se incluirá.</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>Ejemplo</td>
            <td>
                <pre>&lt;%@ include file="header.jsp" %&gt;</pre>
                <p>Este ejemplo incluye el contenido del archivo <code>header.jsp</code> en la página actual.</p>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
