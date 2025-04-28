package com.jsp.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.Dto.Store;

@Repository
public class StoreDao {
	@Autowired
	EntityManager manager;
	
	@Autowired
	EntityTransaction transaction;
	
	//ADD PRODUCT ITEMS IN DB
	public String insertItems(Store store) {
		transaction.begin();
		manager.persist(store);
		transaction.commit();
		return "Product Successfully Stored";
	}
	
	//DISPLAY PRODUCTS
	public List<Store> fetchAll(){
		String sql = "select s from Store s";
		Query q = manager.createQuery(sql);
		return q.getResultList();
	}
	
	public List<Store> getByName(String name) {
		String sql = "select s from Store s where s.name = ?1";
		Query q = manager.createQuery(sql);
		q.setParameter(1, name);
		return q.getResultList();
	}
	
	public List<Store> getByCategory(String category) {
		String sql = "select s from Store s where s.category = ?1";
		Query q = manager.createQuery(sql);
		q.setParameter(1, category);
		return q.getResultList();
	}
	
	// PURCHASE ITEMS
	public double getPrice(String name) {
	    String sql = "select s.price from Store s where s.name = ?1";
	    Query q = manager.createQuery(sql);
	    q.setParameter(1, name);
	    try {
	        Double price = (Double) q.getSingleResult();
	        return price;
	    } catch (Exception e) {
	        return -1;
	    }
	}

	public int getQuantity(String name) {
	    String sql = "select s.quantity from Store s where s.name = ?1";
	    Query q = manager.createQuery(sql);
	    q.setParameter(1, name);
	    try {
	        Number quantity = (Number) q.getSingleResult();
	        return quantity.intValue();
	    } catch (Exception e) {
	        return -1;
	    }
	}

	// UPDATE STOCK QUANTITY
	public int updateQuantity(int qn, String name) {
	    String sql = "update Store s set s.quantity = ?1 where s.name = ?2";
	    Query q = manager.createQuery(sql);
	    q.setParameter(1, qn);
	    q.setParameter(2, name);
	    transaction.begin();
	    int n = q.executeUpdate(); 
	    transaction.commit();
	    manager.clear();
	    return n;
	}

	

}







