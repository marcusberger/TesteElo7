<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<html>
<head>
<meta charset= "UTF-8">
<title>Agenda</title>
</head>
<body>

	<h1>Lista de Contatos</h1>
	
	<div>${sucesso }</div>
	
	<table>
		<tr>
			<td>Id</td>
			<td>Nome</td>
			<td>e-mail</td>
		</tr>
		<c:forEach items="${contatos }" var="contato">
			<tr>
				<td>${contato.id}</td>
				<td>
				<a href="${s:mvcUrl('CC#detalheContatos').arg(0,contato.id).build() }">${contato.nome}</a>
				</td>
				<td>${contato.email}</td>
			</tr>
		</c:forEach>
		
	</table>

</body>
</html>