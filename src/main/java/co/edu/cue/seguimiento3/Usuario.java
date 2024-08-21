package co.edu.cue.seguimiento3;

public class Usuario {

        private String nombres;
        private String apellidos;
        private String usuario;
        private String contraseña;
        private String direccion;
        private String movil;

        public Usuario(String nombres, String apellidos, String usuario, String contraseña, String direccion, String movil) {
            this.nombres = nombres;
            this.apellidos = apellidos;
            this.usuario = usuario.toUpperCase(); // Convertir a mayúsculas
            this.contraseña = contraseña;
            this.direccion = direccion;
            this.movil = movil;
        }

        public String getUsuario() {
            return usuario;
        }

        public String getContraseña() {
            return contraseña;
        }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getMovil() {
        return movil;
    }

    public void setMovil(String movil) {
        this.movil = movil;
    }
}
