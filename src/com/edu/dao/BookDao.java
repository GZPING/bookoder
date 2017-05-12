package com.edu.dao;

import java.util.List;

import com.edu.model.Book;

public interface BookDao {

	public List<Book> selectAllBook(Book book) throws Exception;

	public void deleteBook(int id)throws Exception;

	public void insertBook(Book book)throws Exception;

	public void updateBook(Book book)throws Exception;
}
