package model.dao;

import model.entities.Department;

import java.util.List;

public interface DepartmentDao {

    void inset(Department obj);
    void update(Department obj);
    void deleteById(Integer Id);
    Department findById(Integer Id);
    List<Department> findAll();
}
