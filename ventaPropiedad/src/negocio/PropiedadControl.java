package negocio;

import datos.PropiedadDao;
import datos.datosimpl.PropiedadDaoImpl;
import dominio.Propiedad;
import java.util.ArrayList;
import java.util.List;
import javax.swing.table.DefaultTableModel;

public class PropiedadControl {

    private final PropiedadDao DATOS;
    private Propiedad obj;

    public PropiedadControl() {
        this.DATOS = new PropiedadDaoImpl();
        this.obj = new Propiedad();
    }

    private DefaultTableModel modeloTabla;

    public DefaultTableModel listar(String texto) {
        List<Propiedad> lista = new ArrayList();
        lista.addAll(DATOS.listar(texto));
        
        String[] titulos = {"ID", "NOMBRE","DIRECCION","CARACTERISTICAS","ESTADO","PRECIOALQUILER"};
        
        String[] registro = new String[6];
        
        this.modeloTabla = new DefaultTableModel(null, titulos);
        
        for (Propiedad item : lista) {
            registro[0] = Integer.toString(item.getId());
            registro[1] = item.getNombre();
            registro[2] = item.getDireccion();
            registro[3] = item.getCaracteristicas();
            registro[4] = item.getEstado();
            registro[5] = Double.toString(item.getPrecioAlquiler());
            this.modeloTabla.addRow(registro);
        }
        return this.modeloTabla;
    }

    public String insertar(String nombre,String direccion, String caracteristica,String estado, double precioAlquiler) {
        if (DATOS.existe(nombre)){
            return "El registro ya existe.";
        }else{
            obj.setNombre(nombre);
            obj.setDireccion(direccion);
            obj.setCaracteristicas(caracteristica);
            obj.setEstado(estado);
            obj.setPrecioAlquiler(precioAlquiler);
            if (DATOS.insertar(obj)){
                return "OK";
            }else{
                return "Error en el registro.";
            }
        }
    }

    public String actualizar(int id,String nombre,String nombreAnt,String direccion, String caracteristica,String estado, double precioAlquiler) {
        if (nombre.equals(nombreAnt)){
            obj.setId(id);
            obj.setNombre(nombre);
            obj.setDireccion(direccion);
            obj.setCaracteristicas(caracteristica);
            obj.setEstado(estado);
            obj.setPrecioAlquiler(precioAlquiler);
            if(DATOS.actualizar(obj)){
                return "OK";
            }else{
                return "Error en la actualización.";
            }
        }else{
            if (DATOS.existe(nombre)){
                return "El registro ya existe.";
            }else{
                obj.setNombre(nombre);
                obj.setDireccion(direccion);
                obj.setCaracteristicas(caracteristica);
                obj.setEstado(estado);
                obj.setPrecioAlquiler(precioAlquiler);
                if (DATOS.actualizar(obj)){
                    return "OK";
                }else{
                    return "Error en la actualización.";
                }
            }
        }
    }

    public String eliminar(int id) {
        if (DATOS.eliminar(id)) {
            return "OK";
        } else {
            return "Error en la eliminación de datos.";
        }
    }
}
