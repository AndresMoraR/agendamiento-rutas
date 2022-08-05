/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author estfa
 */
public class AR_admin_cupo {
    private int idCupo;
    private int funcionarioCupo;
    private int estudianteCupo;
    private int totalCupo;
    private int cupoExtra;
    private Boolean estadoCupo;
    private Date fechaCreacionCupo;
    private int idUsuarioCreacionCupo;

    public AR_admin_cupo(int idCupo) {
        this.idCupo = idCupo;
    }
    
    public AR_admin_cupo(int idCupo, int funcionarioCupo, int estudianteCupo, int totalCupo, int cupoExtra, Boolean estadoCupo, Date fechaCreacionCupo, int idUsuarioCreacionCupo) {
        this.idCupo = idCupo;
        this.funcionarioCupo = funcionarioCupo;
        this.estudianteCupo = estudianteCupo;
        this.totalCupo = totalCupo;
        this.cupoExtra = cupoExtra;
        this.estadoCupo = estadoCupo;
        this.fechaCreacionCupo = fechaCreacionCupo;
        this.idUsuarioCreacionCupo = idUsuarioCreacionCupo;
    }

    public AR_admin_cupo(int idCupo, Boolean estadoCupo) {
        this.idCupo = idCupo;
        this.estadoCupo = estadoCupo;
    }

    public AR_admin_cupo(int idCupo, int funcionarioCupo, int estudianteCupo, int totalCupo, int cupoExtra) {
        this.idCupo = idCupo;
        this.funcionarioCupo = funcionarioCupo;
        this.estudianteCupo = estudianteCupo;
        this.totalCupo = totalCupo;
        this.cupoExtra = cupoExtra;
    }

    public AR_admin_cupo(int funcionarioCupo, int estudianteCupo, int totalCupo, int cupoExtra) {
        this.funcionarioCupo = funcionarioCupo;
        this.estudianteCupo = estudianteCupo;
        this.totalCupo = totalCupo;
        this.cupoExtra = cupoExtra;
    }

    public int getIdCupo() {
        return idCupo;
    }

    public void setIdCupo(int idCupo) {
        this.idCupo = idCupo;
    }

    public int getFuncionarioCupo() {
        return funcionarioCupo;
    }

    public void setFuncionarioCupo(int funcionarioCupo) {
        this.funcionarioCupo = funcionarioCupo;
    }

    public int getEstudianteCupo() {
        return estudianteCupo;
    }

    public void setEstudianteCupo(int estudianteCupo) {
        this.estudianteCupo = estudianteCupo;
    }

    public int getTotalCupo() {
        return totalCupo;
    }

    public void setTotalCupo(int totalCupo) {
        this.totalCupo = totalCupo;
    }

    public int getCupoExtra() {
        return cupoExtra;
    }

    public void setCupoExtra(int cupoExtra) {
        this.cupoExtra = cupoExtra;
    }

    public Boolean getEstadoCupo() {
        return estadoCupo;
    }

    public void setEstadoCupo(Boolean estadoCupo) {
        this.estadoCupo = estadoCupo;
    }

    public Date getFechaCreacionCupo() {
        return fechaCreacionCupo;
    }

    public void setFechaCreacionCupo(Date fechaCreacionCupo) {
        this.fechaCreacionCupo = fechaCreacionCupo;
    }

    public int getIdUsuarioCreacionCupo() {
        return idUsuarioCreacionCupo;
    }

    public void setIdUsuarioCreacioncupo(int idUsuarioCreacionCupo) {
        this.idUsuarioCreacionCupo = idUsuarioCreacionCupo;
    }
}
