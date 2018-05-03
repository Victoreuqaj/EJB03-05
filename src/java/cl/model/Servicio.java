/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.model;

import java.util.List;
import javax.ejb.Singleton;
import java.util.*;

/**
 *
 * @author roman
 */
@Singleton
public class Servicio implements ServicioLocal {

    private List<Producto> lista;
    private List<persona> lista1;

    public Servicio() {
        lista = new ArrayList();
        lista.add(new Producto(1, "Sprite 1L", 1000));
        lista.add(new Producto(2, "Fanta 1L", 1000));
        lista1 = new ArrayList();
        lista1.add(new persona("1-1", "Víctor", "1234"));
        lista1.add(new persona("1-2", "Juan", "1234"));
        lista1.add(new persona("1-3", "Ernesto", "1234"));
        lista1.add(new persona("1-4", "Miguel", "1234"));
        lista1.add(new persona("1-5", "José", "1234"));

    }

    @Override
    public persona iniciarSesion(String rut, String clave) {
        for (persona n : lista1) {
            if (n.getRut().equals(rut)) {
                if (n.getClave().equals(clave)) {
                    return n;
                }
            }
        }
        return null;
    }

    @Override
    public void add(Producto p) {
        lista.add(p);
    }

    @Override
    public List<Producto> getLista() {
        return lista;
    }

    @Override
    public Producto buscarProducto(int id) {
        for (Producto p : lista) {
            if (p.getId() == id) {
                return p;
            }
        }
        return null;
    }

    @Override
    public void eliminarProducto(int id) {
        Producto p = buscarProducto(id);
        if (p != null) {
            lista.remove(p);
        }
    }

    @Override
    public void editarPrecio(int id, int precio) {
        Producto p = buscarProducto(id);
        if (p != null) {
            p.setPrecio(precio);
        }
    }

    @Override
    public String cambiarClave(String rut, String actual, String nueva) {
        for (persona n : lista1) {
            if (n.getRut().equals(rut)) {
                if (n.getClave().equals(actual)) {
                    n.setClave(nueva);
                    return "Clave actualizada";

                } else {
                    return "clave incorrecta";
                }
                
            }
            return "";
             
        }

   

}
