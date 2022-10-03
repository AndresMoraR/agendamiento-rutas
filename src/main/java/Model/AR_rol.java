/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author estfa
 */
public class AR_rol {
    private int idRol;
    private String nombreRol;

    public AR_rol(int idRol) {
        this.idRol = idRol;
    }
    
    public AR_rol(int idRol, String nombreRol) {
        this.idRol = idRol;
        this.nombreRol = nombreRol;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public String getNombreRol() {
        return nombreRol;
    }

    public void setNombre_rol(String nombreRol) {
        this.nombreRol = nombreRol;
    }
    
    
}
