package com.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.dao.BookDao;
import com.edu.model.Book;
import com.edu.service.BookService;

@Service
@Transactional
public class BookServerImpl implements BookService {
	
	@Autowired
	BookDao bookDao;

	@Override
	public List<Book> searchAllBook(Book book) throws Exception {
		return bookDao.selectAllBook(book);
	}

	@Override
	public void editBook(Book book) throws Exception {
		bookDao.updateBook(book);
		
	}

	@Override
	public void deleteBook(int id) throws Exception {
		bookDao.deleteBook(id);
	}

	@Override
	public void addBook(Book book) throws Exception {
		bookDao.insertBook(book);
	}

}
