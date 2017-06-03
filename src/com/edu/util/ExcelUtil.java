package com.edu.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;

public class ExcelUtil {
	 public static List<Object[]> readFile(File file){
	        Object[] obj = null;  
	        ArrayList<Object[]> list = new ArrayList<Object[]>();  //定义ArrayList,包含数组类型  
	     //   String filePath = "D:/test.xls";  //定义Excel文件路径  
	        InputStream is = null;  
	        Workbook rwb = null;  
	        try {  
	            is = new FileInputStream(file); //定义文本输入流  
	        } catch (FileNotFoundException e) {  
	            e.printStackTrace();  
	        }  
	  
	        try {  
	            rwb = Workbook.getWorkbook(is); //打开Workbook  
	        } catch (BiffException e) {  
	            e.printStackTrace();  
	        } catch (IOException e) {  
	            e.printStackTrace();  
	        }  
	  
	        Sheet sht = rwb.getSheet("Sheet1"); //打开Workbook中Sheet1  
	        int col = sht.getColumns();  //获得Excel列  
	        int row = sht.getRows();  //获得Excel行  
	        jxl.Cell c1 = null;  
	          
	        for(int i=0; i<row; i++)  //先将数据按行装入一个一维数组中， 然后将数组逐个加入到ArrayList  
	        {  
	            obj = new String[col];  
	            for(int j=0; j<col; j++)  
	            {  
	                c1 = sht.getCell(j, i);  
	                obj[j] = c1.getContents();  
	            }  
	            list.add(obj);  
	        }  
			return list;
	    	
	    }
}
