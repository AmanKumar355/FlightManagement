package com.cg.dao;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

@Component("jpadao")
@Lazy(true)
public class JPADaoImpl implements IDao{

  public JPADaoImpl() {
	  System.out.println("JPA dao constructor");
  }
	@Override
	public String getName() {
		
		return "jpa name";
	}

}
