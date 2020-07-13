package com.portalescola.services.interfaces;

import java.util.List;

public interface IRepository<T> {

	void delete(int id);

	List<T> listAll();
	
	List<String[]> listAllSt();

	T getById(int id);

	T saveOrUpdate(T obj);
}
