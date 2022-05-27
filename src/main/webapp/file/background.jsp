<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	String fName = URLEncoder.encode("배경배경~", "utf-8");

	response.setHeader("Content-Disposition", "attachment; fileName" + fName);
	
	out.clear();
	
	
	
	
	
	

	
%>