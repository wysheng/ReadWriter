<%@page import="java.io.FileReader"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.*,java.lang.*" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>读写文本文件</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<%
  		String path=request.getRealPath("");
  		//建立FileWriter对象，并是实例化fw
  		FileWriter fw= new FileWriter(path+"\\test.txt");
  		//将字符串写入文件
  		fw.write("大家好！");
  		fw.write("hello!");
  		fw.write("\r\n");
  		fw.write("请多多指教！");
  		fw.close();
  		FileReader fr =new FileReader(path+"\\test.txt");
  		//在读取过程去，要判断读取的字符是否已经到了文件的末尾，并且这个字符是 是不是文件的换行符，即判断这个字符是不是13
  		int c=fr.read();//从文件中读取一个字符
  		//判断是否已经读到文件的结尾
  		while(c!=-1)
  		{
  			//输出读到的数据
  			out.print((char)c);
  			//从文件中继续读取数据
  			c=fr.read();
  			//判断是否为换行符
  			if(c==13)
  			{
  				//输出分行标签
  				out.print("<br>");
  				//略过一个字符
  				fr.skip(1);
  				//读取一个字符
  				fr.read();
  			}
  		}
  		fr.close();
  	 %>
  </body>
</html>
