/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author OSIADMIN
 */
public class AR_admin_ruta {
    
    private int id_ruta;
    private String nombre_ruta;
    private String descripcion_ruta;
    
    public AR_admin_ruta(int id_ruta) {
        this.id_ruta = id_ruta;
    }
    
    public AR_admin_ruta( int id_ruta, String nombre_ruta, String descripcion_ruta){
        
        this.id_ruta = id_ruta;
        this.nombre_ruta = nombre_ruta;
        this.descripcion_ruta = descripcion_ruta;
    
    }
    
    /*public AR_admin_ruta(int String nombre_ruta, String descripcion_ruta){
        
        this.nombre_ruta = nombre_ruta;
        this.descripcion_ruta = descripcion_ruta;
    
    }*/

    public int getId_ruta() {
        return id_ruta;
    }

    public void setId_ruta(Integer id_ruta) {
        this.id_ruta = id_ruta;
    }

    public String getNombre_ruta() {
        return nombre_ruta;
    }

    public void setNombre_ruta(String nombre_ruta) {
        this.nombre_ruta = nombre_ruta;
    }

    public String getDescripcion_ruta() {
        return descripcion_ruta;
    }

    public void setDescripcion_ruta(String descripcion_ruta) {
        this.descripcion_ruta = descripcion_ruta;
    }
    
    
    
    
}
