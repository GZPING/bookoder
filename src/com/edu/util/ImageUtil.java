package com.edu.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.apache.struts2.ServletActionContext;

public class ImageUtil {
	
	public static void updoad(File image,String imageFileName){
		  String savaPath=ServletActionContext.getServletContext().getRealPath("/images/book");
	        ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");  
	        ServletActionContext.getResponse().setCharacterEncoding("utf-8");  
	        try {
	            FileInputStream fis = new FileInputStream(image);  
	            File file=new File(savaPath);
	            if (!file.exists()) {
	            	file.mkdir();
	            }
	            file=new File(savaPath+"/"+imageFileName);
	            FileOutputStream fos = new FileOutputStream(file);  
	            byte bt[] = new byte[(int) image.length()];  
	            while(fis.read(bt)>0){  
	                fos.write(bt);  
	            }  
	            fis.close();  
	            fos.flush();  
	            fos.close();  
	    	} catch (Exception e) {
	    		e.printStackTrace();
			}
	}
}