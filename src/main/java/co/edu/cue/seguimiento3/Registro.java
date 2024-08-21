package co.edu.cue.seguimiento3;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/Registro")
public class Registro extends HttpServlet {
    private static List<Usuario> usuarios = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        String direccion = request.getParameter("direccion");
        String movil = request.getParameter("movil");

        if (nombres.isEmpty() || apellidos.isEmpty() || usuario.isEmpty() || clave.isEmpty() || direccion.isEmpty() || movil.isEmpty()) {
            request.setAttribute("error", "Por favor, rellena todos los campos.");
            RequestDispatcher req = request.getRequestDispatcher("registro.jsp");
            req.include(request, response);
        } else {
            Usuario nuevoUsuario = new Usuario(nombres, apellidos, usuario, clave, direccion, movil);
            usuarios.add(nuevoUsuario);

            request.setAttribute("mensaje", "Registro exitoso para " + usuario + ".");
            RequestDispatcher req = request.getRequestDispatcher("confirma_registro.jsp");
            req.forward(request, response);
        }
    }

    public static List<Usuario> getUsuarios() {
        return usuarios;
    }
}
