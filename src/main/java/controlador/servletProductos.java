/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Productos;
import modelo.ProductosCRUD;

/**
 *
 * @author DAW-B
 */
public class servletProductos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String op = request.getParameter("op");
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet servletProductos</title>");            
            out.println("</head>");
            out.println("<body>");
            
            if (op.equals("listar")) {
                 List<Productos> misProductos = ProductosCRUD.getProductos();
                 request.setAttribute("misProductos",misProductos);
                 request.getRequestDispatcher("listar.jsp").forward(request, response);
                /*for (Productos p1 : misProductos) {
                    out.println("<p>" + p1.getNombre() + "</p>");
                }*/
            }
            if ( op.equals("insert1")) { //cuando le indicamos que vaya a insertar
                 request.getRequestDispatcher("insert.jsp").forward(request, response);

            }

            if ( op.equals("insert2")) { //cuando recibe los datos de la inserción
                    Productos miProducto = new Productos();
                    miProducto.setNombre(request.getParameter("nombre"));
                    miProducto.setImagen(request.getParameter("imagen"));
                    miProducto.setCategoria(request.getParameter("categoria"));
                    String precio=request.getParameter("precio");
                    miProducto.setPrecio(Float.parseFloat(precio));
                    ProductosCRUD.insertProduct(miProducto);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
            }
              if ( op.equals("borrar")) { //cuando le indicamos que vaya a insertar
                  int id = Integer.parseInt(request.getParameter("id"));
                  if(ProductosCRUD.borrarProducto(id)>0){
                      request.getRequestDispatcher("index.jsp").forward(request, response);
                  }
                 

            }
            /*Productos pact = new Productos();
            pact.setId(12);
            pact.setNombre("Tarta de limon");
            pact.setPrecio(10);
            pact.setImagen("tarta.jpg");
            pact.setCategoria("complementos");
            
            ProductosCRUD.actualizaProducto(pact);*/
            /*out.println("<p>Borrando producto con id 4...</p>");
            ProductosCRUD.borrarProducto(4);
            out.println("<p>Mostrando de nuevo los datos...</p>");
            List<Productos> misProductos2 = ProductosCRUD.getProductos();
            for (Productos p2 : misProductos2) {
                out.println("<p>" +p2.getNombre() + "</p>");
            }*/
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
