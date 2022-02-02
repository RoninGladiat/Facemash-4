<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Facesmash</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<style>
	body {
		font-family: Tahoma;
		margin: 0;
		padding: 0;
		text-align: center;
	}
	a {
		text-decoration: none;
		color: darkblue;
	}
	a:hover {
		text-decoration: underline;
	}
	img {
		width: 175px;
		height: 250px;
		border: 2px solid #aaa;
	}
	#header {
		background-color: #800000;
		color: #fff;
		padding: 5px;
	}
	#header a{
		color: #fff;
		text-decoration: none;
	}
	#main table {
		margin: 0 auto;
	}
	#footer {
		font: 12px Tahoma;
		margin: 25px 0 50px 0;
	}
	#footer a {
		margin-right: 10px;
	}
	td{
		padding: 10px 10px 10px 10px;
	}
</style>
<body>
<%
String[] CastMarvel = (String[])session.getAttribute("cast");
int[] voti = (int[])session.getAttribute("voti");
%>
<div id="header">
	<h1><a href="index.jsp">FACEMASH</a></h1>
</div>
<div id="main">
	<h3>Table of choose</h3>
	<table>
		<tr>
			<td><b>CastMarvel</b></td>
			<td><b>Voti</b></td>
		</tr>
		<tr>
			<td><%=CastMarvel[0]%></td>
			<td><%=voti[0]%></td>
		</tr>
		<tr>
			<td><%=CastMarvel[1]%></td>
			<td><%=voti[1]%></td>
		</tr>
		<tr>
			<td><%=CastMarvel[2]%></td>
			<td><%=voti[2]%></td>
		</tr>
		<tr>
			<td><%=CastMarvel[3]%></td>
			<td><%=voti[3]%></td>
		</tr>
		<tr>
			<td><%=CastMarvel[4]%></td>
			<td><%=voti[4]%></td>
		</tr>
		
	</table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
</body>
</html>