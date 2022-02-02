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
</style>
<body>
<%
int immagine1=Integer.valueOf(request.getParameter("posizione")).intValue();
String nome=request.getParameter("nome");
int[] voto = (int[])session.getAttribute("voti");
voto[immagine1-1]+=1;
session.setAttribute("voti",voto);
session.setAttribute("token","True");
%>
<div id="header">
	<h1><a href="index.jsp">FACEMASH</a></h1>
</div>
<div id="main">
	<h3>This is what you have chosen</h3>
	<table>
		<tr>
			<td><img src="img/<%=immagine1%>.jpg" /></td>
		</tr>
		<tr>
			<td><%=nome%></td>
		</tr>
	</table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>