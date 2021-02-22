/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author DAW-B
 */
public class ProductosCRUD {
    public static List<Productos> getProductos(){
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("com.mycompany_productosCRUD_war_1.0-SNAPSHOTPU");
        EntityManager manager = factory.createEntityManager();
        String sql = "SELECT * FROM productos";
        Query q = manager.createNativeQuery(sql, Productos.class);
        List<Productos> productosBD = q.getResultList();
      
        return productosBD;
    }

    public static Productos getProducto(int id)  {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("com.mycompany_productosCRUD_war_1.0-SNAPSHOTPU");
        EntityManager manager = factory.createEntityManager();
        String sql = "SELECT p FROM Productos p WHERE p.id = " + id;
        Query q = manager.createQuery(sql, Productos.class);
        Productos p = (Productos) q.getSingleResult();

        return p;
    }
  
    public static void insertarProducto() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("com.mycompany_productosCRUD_war_1.0-SNAPSHOTPU");
        EntityManager manager = factory.createEntityManager();
        String sql = "INSERT INTO productos (id, nombre, imagen, categoria, precio) VALUES (NULL, 'Tortas de alcazar', '', 'complementos', '10.2')";
        manager.getTransaction().begin();
        Query q = manager.createQuery(sql, Productos.class);
         manager.getTransaction().begin();
        q.executeUpdate();
    }
    
     public static int borrarProducto(int id) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("com.mycompany_productosCRUD_war_1.0-SNAPSHOTPU");
        EntityManager manager = factory.createEntityManager();
        String sql = "DELETE from productos WHERE id = " + id;
        Query q = manager.createNativeQuery(sql);
        manager.getTransaction().begin();
        int filasAfectadas = q.executeUpdate(); //para las consultas de modif. datos se usa el método executeUpdate
        manager.getTransaction().commit();
        return filasAfectadas;
    }
}
