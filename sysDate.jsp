<%@page import="java.text.SimpleDateFormat"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>当前系统时间</title>
</head>
<body>
	<%
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat(
				"yyyy-MM--dd hh:mm:ss");
		String curTime = format.format(date);
		out.write(curTime);
	%>
</body>
</html>