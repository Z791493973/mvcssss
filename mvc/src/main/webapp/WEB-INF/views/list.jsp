<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style media="screen">
* {
	margin: 0;
	padding: 0;
}

header {
	padding: 1em 0;
	text-align: center;
	background-color: #4a4;
	color: #fff;
	font-size: 300%;
}

header span {
	font-size: 50%;
	margin-left: 1em;
	color: #eee;
}

footer {
	position: absolute;
	bottom: 0;
	padding: 2em 0;
	text-align: center;
	background-color: #4a4;
	color: #fff;
	width: 100%;
	clear: both;
}

.content {
	width: 75%;
	overflow: auto;
	float: right;
	min-height: 300px;
}

.nav {
	float: left;
	background-color: #eee;
	width: 25%;
	position: fixed;
	height: 100%;
	overflow: auto;
}

ul {
	list-style-type: none;
	margin-top: 1em;
}

li a {
	display: block;
	color: #000;
	padding: 8px 0 8px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #4a4;
	color: white;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin: 2m auto;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f200;
}
</style>
<title>客户关系管理</title>
</head>

<body>
	<header>
		CRM<span>客户关系管理</span>
	</header>
	<div class="nav">
		<ul>
			<li><a href="list">客户列表</a></li>
			<li><a href="new.jsp">录入客户</a></li>
			<li><a href="#">其他</a></li>
		</ul>
	</div>
	<div class="content">
		<table>
			<thead>
				<tr>
					<th>编号</th>
					<th>部门编号</th>
					<th>部门名</th>
					<th>部门地址</th>
					<th>编辑</th>
					<th>删除</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dept" items="${requestScope.depts }"
					varStatus="rows">
					<tr>

						<td>${rows.index+1 }</td>
						<td>${dept.deptno }</td>
						<td>${dept.dname }</td>
						<td>${dept.loc }</td>
						<td>
							<form action="findById" method="post">
								<input type="hidden" name="deptno" value="${dept.deptno }"> 
								<input type="submit" value="编辑">
							</form>
						</td>
						<td>
							<form action="remove" method="post">
								<input type="hidden" name="deptno" value="${dept.deptno }"> <input
									type="submit" onclick="return window.confirm('是否确认删除?')" value="删除">
							</form>
						</td>
					</tr>


				</c:forEach>


			</tbody>





		</table>

	</div>
	<footer>Copyright (c) 2016 牛耳教育 All Rights Reserved.</footer>
</body>
</html>