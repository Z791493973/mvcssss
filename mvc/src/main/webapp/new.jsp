<%@ page language="java" pageEncoding="UTF-8"%>
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
form {
	margin: 2em 4em;
}
form div {
	margin-bottom: 1em;
}
label {
	display: inline-block;
	width: 6em;
	text-align: right;
	margin-right: 2em;
}
input, select {
	font-size: 150%;
}
input[type=submit] {
	padding: 0 4em;
	margin-left: 6em;
}

</style>
<title></title>
</head>

<body>
	<header>
		CRM<span>录入客户信息</span>
	</header>
	<div class="nav">
		<ul>
			 <li><a href="list">客户列表</a></li>
			<li><a href="new.jsp">录入客户</a></li>
			<li><a href="#">其他</a></li>
		</ul>
	</div>
	<div class="content">
	
		<form action="add" method="post">
			<div>
				<label>部门编号</label>
				<input name="deptno" placeholder="部门编号" required="required">
			</div>

			<div>
				<label>部门名</label>
				<input name="dname" placeholder="部门名" required="required">
			</div>
			<div>
				<label>部门地址</label>
				<input name="loc" placeholder="部门地址" required="required">
			</div>
			<div>
				<input type="submit" value="添加">
			</div>
		</form>

	</div>
	<footer>Copyright (c) 2016 牛耳教育 All Rights Reserved.</footer>
</body>
</html>