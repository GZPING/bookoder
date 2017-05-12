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

	@Override
	public void deleteBook(int id) throws Exception {
		sqlSessionTemplate.delete(Context.DELETE_BOOK_BYID, id);
	}

	@Override
	public void insertBook(Book book) throws Exception {
		sqlSessionTemplate.insert(Context.INSERT_BOOK, book);
		
	}

	@Override
	public void updateBook(Book book) throws Exception {
		sqlSessionTemplate.update(Context.UPDATE_BOOK, book);
		
	}
	
}
