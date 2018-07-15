<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改联系人</title>
</head>
<body>
	<center>
		<h3>修改联系人</h3>
	</center>
	<form action="<%=request.getContextPath()%>/update" method="post">
		<table align="center" border="1px" width="200px">
			<tr>
				<th>编号</th>
				<td><input type="text" name="id" value="${contact.id }"></td>
			</tr>

			<tr>
				<th>姓名</th>
				<td><input type="text" name="name" value="${contact.name }" /></td>
			</tr>

			<c:choose>
				<c:when test="${contact.gender  eq  '男'}">
					<tr>
						<th>性别</th>
						<td><input type="radio" name="gender" value="男"
							checked="checked" />男&nbsp; <input type="radio" name="gender"
							value="女" />女</td>
					</tr>
				</c:when>
				<c:otherwise>
					<tr>
						<th>性别</th>
						<td><input type="radio" name="gender" value="男" />男&nbsp; <input
							type="radio" name="gender" value="女" checked="checked" />女</td>
					</tr>

				</c:otherwise>

			</c:choose>

			<tr>
				<th>年龄</th>
				<td><input type="text" name="age" value="${contact.age }" /></td>
			</tr>

			<tr>
				<th>电话</th>
				<td><input type="text" name="phone" value="${contact.phone }" /></td>
			</tr>

			<tr>
				<th>qq</th>
				<td><input type="text" name="qq" value="${contact.qq }" /></td>
			</tr>

			<tr>
				<th>email</th>
				<td><input type="text" name="email" value="${contact.email }" /></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit" value="保存">
					&nbsp;<input type="reset" value="重置"></td>
			</tr>
		</table>
	</form>
</body>
</html>