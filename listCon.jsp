<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>联系人列表</title>
</head>
<body>
	<center>
		<h3>查询所有联系人</h3>
	</center>
	<table border="1px" align="center" width="500px">
		<tr>
			<th>编号</th>
			<th>姓名</th>
			<th>性别</th>
			<th>年龄</th>
			<th>电话</th>
			<th>qq</th>
			<th>email</th>
			<th>操作</th>
		</tr>
		<c:forEach begin="0" items="${requestScope.list }" var="conList" varStatus="status">
			<tr>
				<td>${conList.id }</td>
				<td>${conList.name }</td>
				<td>${conList.gender }</td>
				<td>${conList.age }</td>
				<td>${conList.phone }</td>
				<td>${conList.qq }</td>
				<td>${conList.email }</td>
				<td><a href="<%=request.getContextPath() %>/up?id=${conList.id }">[修改]</a>
					&nbsp;<a href="<%=request.getContextPath() %>/del?id=${conList.id }">[删除]</a>
				</td>
			</tr>
		
		</c:forEach>
		<tr>
			<td colspan="8" align="center"><a href="addContact.html">[添加]</a></td>
		</tr>
	</table>
</body>
</html>