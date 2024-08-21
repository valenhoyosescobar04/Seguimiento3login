package co.edu.cue.seguimiento3;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(value = "/CerrarSesion")
public class CerrarSesion extends HttpServlet {

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            HttpSession session = req.getSession();
            session.invalidate(); // Cerrar sesión
            resp.sendRedirect("registro.jsp"); // Redirigir a registro.jsp
        }
    }

