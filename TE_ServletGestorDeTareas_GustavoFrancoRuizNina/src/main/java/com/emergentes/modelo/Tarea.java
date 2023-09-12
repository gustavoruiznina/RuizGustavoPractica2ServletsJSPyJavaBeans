
package com.emergentes.modelo;

/**
 *
 * @author CORE I5
 */
public class Tarea {
        private int id;
	private String ntarea;
	private boolean completado;

    public Tarea() {
        this.id=0;
	this.ntarea="";
	//this.completado=false;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNtarea() {
        return ntarea;
    }

    public void setNtarea(String ntarea) {
        this.ntarea = ntarea;
    }

   /* public boolean getCompletado() {
        return completado;
    }

    public void setCompletado(boolean completado) {
        this.completado = completado;
    }
        */
        
        
}
