package model.impl;

import model.dao.SellerDao;
import model.entities.Seller;

import java.util.List;

public class SellerDaoJDBC implements SellerDao {

    @Override
    public void inset(Seller obj) {

    }

    @Override
    public void update(Seller obj) {

    }

    @Override
    public void deleteById(Integer Id) {

    }

    @Override
    public Seller findById(Integer Id) {
        return null;
    }

    @Override
    public List<Seller> findAll() {
        return List.of();
    }
}
