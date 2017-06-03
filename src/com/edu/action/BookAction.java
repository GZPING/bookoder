package com.edu.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.edu.model.Book;
import com.edu.service.BookService;
import com.edu.util.ExcelUtil;
import com.edu.util.ImageUtil;
import com.edu.util.UtilUser;

@SuppressWarnings("serial")
@Controller
@Scope("prototype")
public class BookAction extends BaseAction {
	@Autowired
	private BookService bookService;

	private Book book=new Book();
	private List<Book> bookList;
	private int id;
	private int status;

	private File image;
	private File file;
	private String imageFileName; // 得到文件的名称，写法是固定的
	private String imageContentType; // 得到文件的类型

	public String searchAllBook() {
		if(!UtilUser.isLogin()){
			return LOGIN;
		}
		if(id==1){
			book.setPageNum(3);
		}
		try {
			bookList = bookService.searchAllBook(book);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(id==1){
			return "bookForIndex";
		}
		if(UtilUser.getUser().getAdmin()!=100){
			return "bookRead";
		}
		return SUCCESS;
	}

	public String editBook() {
		if (id == 1) {
			if (image != null) {
				ImageUtil.updoad(image, imageFileName);
				book.setImage(imageFileName);
			}
			try {
				bookService.editBook(book);
				this.setAjaxResult(SUCCESS);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				bookList = bookService.searchAllBook(book);
				if (bookList.size() > 0) {
					book = bookList.get(0);
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return SUCCESS;
	}

	public String deleteBook() {
		try {
			bookService.deleteBook(id);
			this.setAjaxResult("success");
		} catch (Exception e) {
			this.setAjaxResult("error");
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public String loadAddBook() {
		return SUCCESS;
	}

	public String addBook() {
		if (book != null) { 
			if (image != null) {
				ImageUtil.updoad(image, imageFileName);
				book.setImage(imageFileName);
			}
			try {
				if (book.getImage() != null && book.getImage().equals("")) {
					book.setImage("defult.png");
				}
				bookService.addBook(book);
				this.setAjaxResult("success");
			} catch (Exception e) {
				this.setAjaxResult("error");
				e.printStackTrace();
			}
		}
		return SUCCESS;
	}

	/*
	 * 批量导入
	 */
	@SuppressWarnings("rawtypes")
	public String addBooks(){
		this.setAjaxResult(ERROR);
		if (file != null) {
			List list=new ArrayList();
			list=ExcelUtil.readFile(file);
			try {
			for(int i=1;i<list.size();i++){
				String[] obj=new String[6];
				obj=(String[]) list.get(i);
				Book book=new Book(Integer.parseInt(obj[0]), obj[1], obj[2], obj[3], Integer.parseInt(obj[4]), obj[5]);
				bookService.addBook(book);
			}
			this.setAjaxResult(SUCCESS);
			} catch (Exception e) {
				this.setAjaxResult(ERROR);
				e.printStackTrace();
			}
		}
		return SUCCESS;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

}
