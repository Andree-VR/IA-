package ControladorUsuario;

import ControladorUsuario.*;
import Entidad.Usuario;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.UsuarioDAO;

public class actualizarAccion extends AccionUsuario {
    public String Comando(HttpServletRequest request, HttpServletResponse
                response) throws ServletException, IOException 
    {
        Usuario u = new Usuario();
        UsuarioDAO dao = new UsuarioDAO();
        int id=Integer.parseInt(request.getParameter("txtid"));
        String nom=request.getParameter("txtNombre");
        String ape=request.getParameter("txtApellido");
        String usuario=request.getParameter("txtUsuario");
        String password=request.getParameter("txtPassword");
        //String tipo=request.getParameter("txtTipo");
        u.setIdUsuario(id);
        u.setUsuario(usuario);
        u.setPassword(password);
        u.setNombre(nom);
        u.setApellido(ape);
        //u.setTipoUsuario(tipo);
        dao.edit(u);
        request.getRequestDispatcher("/listarUsuario.jsp").forward(request, response);
        
        return "";
    }
}
