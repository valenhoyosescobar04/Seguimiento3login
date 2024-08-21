package co.edu.cue.seguimiento3;
import java.io.IOException;
import co.edu.cue.seguimiento3.Usuario;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/RecibeDatos")
public class RecibeDatos extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("textUsuario").toUpperCase();
        String contraseña = request.getParameter("textContraseña");

        if (usuario.isEmpty() || contraseña.isEmpty()) {
            request.setAttribute("error", "Por favor, rellena todos los campos.");
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.include(request, response);
        } else {
            Usuario userAutenticado = null;

            for (Usuario u : Registro.getUsuarios()) {
                if (u.getUsuario().equals(usuario) && u.getContraseña().equals(contraseña)) {
                    userAutenticado = u;
                    break;
                }
            }

            if (userAutenticado != null) {
                request.setAttribute("usuario", userAutenticado);
                RequestDispatcher rd = request.getRequestDispatcher("mostrarDatos.jsp");
                rd.forward(request, response);
            } else {
                request.setAttribute("errorMessage", "Usuario o contraseña incorrectos. Por favor, inténtelo de nuevo o regístrese.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                dispatcher.forward(request, response);
            }
        }
    }
}
