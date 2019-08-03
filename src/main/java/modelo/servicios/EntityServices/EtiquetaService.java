package modelo.servicios.EntityServices;

import encapsulacion.Etiqueta;
import modelo.dao.interfaces.EtiquetaDAO;
import modelo.dao.Implementations.EtiquetaDAOImpl;

import java.util.List;

public class EtiquetaService implements EtiquetaDAO {
    private EtiquetaDAOImpl etiquetaDAO;

    public EtiquetaService() {
        etiquetaDAO = new EtiquetaDAOImpl();
    }

    @Override
    public void insert(Etiqueta e) {
        etiquetaDAO.insert(e);
    }

    @Override
    public void update(Etiqueta e) {
        etiquetaDAO.update(e);
    }

    @Override
    public void delete(Etiqueta e) {
        etiquetaDAO.delete(e);
    }

    @Override
    public List<Etiqueta> getAll() {
       return etiquetaDAO.getAll();
    }

    @Override
    public Etiqueta getById(long id) {
        return etiquetaDAO.getById(id);
    }

    @Override
    public List<Etiqueta> getByArticulo(long id) {
        return etiquetaDAO.getByArticulo(id);
    }
}
