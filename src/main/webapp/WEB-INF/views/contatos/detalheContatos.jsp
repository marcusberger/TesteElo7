<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset= "UTF-8">
<title>Agenda</title>
</head>
<body>

	<h1>Dados do ${contato.nome}</h1>
	
	<div>${sucesso }</div>
	<table>
		<tr>
			<td>foto</td>
			<td>Id</td>
			<td>Nome</td>
			<td>e-mail</td>
		</tr>
			<tr>
				<td>${fotoPath}</td>
				<td>${contato.id}</td>
				<td>${contato.nome}</td>
				<td>${contato.email}</td>
			</tr>
		
	</table>

</body>
</html>