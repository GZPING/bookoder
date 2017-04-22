package com.edu.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.edu.model.Book;
import com.edu.service.BookService;

@SuppressWarnings("serial")
@Controller
@Scope("prototype")
public class BookAction extends BaseAction{
	@Autowired
	private BookService bookService;
	
	private Book book;
	private List<Book> bookList;
	
	public String searchAllBook(){
		try {
			bookList =bookService.searchAllBook(book);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public List<Book> getBookList() {
		return bookList;
	}

	public void setBookList(List<Book> bookList) {
		this.bookList = bookList;
	}
}
