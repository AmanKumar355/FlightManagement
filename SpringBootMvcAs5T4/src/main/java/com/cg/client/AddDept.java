package com.cg.client;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class AddDept {
	
	public static void main(String[] args) {
		
		EntityManagerFactory emf= Persistence.createEntityManagerFactory("JPA-CRUD");
		emf.close();
	}

}
