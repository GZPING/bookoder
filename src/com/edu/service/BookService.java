package com.edu.service;

import java.util.List;

import com.edu.model.Book;

public interface BookService {
	
	public List<Book> searchAllBook(Book book) throws Exception;
}
