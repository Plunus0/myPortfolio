package com.web.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.dao.CgvProductDAO;
import com.web.vo.CgvProductVO;

public class ProductServiceImpl extends ObjectServiceAdapter{

	@Autowired
	private CgvProductDAO productDao;
	
	@Override
	public int getInsertResult(Object obj) {		
		return productDao.insert(obj);
	}
}
