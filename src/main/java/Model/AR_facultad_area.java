/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

public class AR_facultad_area {
    private int idFacultadArea;
    private String nombreFacultadArea;

    public AR_facultad_area(int idFacultadArea, String nombreFacultadArea) {
        this.idFacultadArea = idFacultadArea;
        this.nombreFacultadArea = nombreFacultadArea;
    }

    public int getIdFacultadArea() {
        return idFacultadArea;
    }

    public void setIdFacultadArea(int idFacultadArea) {
        this.idFacultadArea = idFacultadArea;
    }

    public String getNombreFacultadArea() {
        return nombreFacultadArea;
    }

    public void setNombreFacultadArea(String nombreFacultadArea) {
        this.nombreFacultadArea = nombreFacultadArea;
    }        
}
