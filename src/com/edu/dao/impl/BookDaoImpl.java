package com.edu.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.dao.BookDao;
import com.edu.model.Book;
import com.edu.util.Context;

@Repository
public class BookDaoImpl implements BookDao {

	@Autowired             
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<Book> selectAllBook(Book book) {
		return sqlSessionTemplate.selectList(Context.SELECT_ALL_BOOK ,book);
	}
	
}
