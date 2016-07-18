<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset= "UTF-8">
<title>Agenda</title>

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
<script src="resources/js/bootstrap.min.js"></script> 

</head>
<body>

	<h1>Agenda</h1>
	
	<div>${sucesso }</div>
	
	<table>
		<tr>
			<td>Nome</td>
		</tr>
		<c:forEach items="${contatos }" var="contato">
			<tr>
				<td>
				
				<a href="${s:mvcUrl('CC#detalheContatos').arg(0,contato.id).build() }">${contato.nome}</a>
				
				</td>
				<td><a href="<c:url value='/contatos/remove/${contato.id}'/>" >Remover</a></td>
				<td><a href="editarContato/${contato.id}">Editar</a></td>
			</tr>
		</c:forEach>
		
	</table>

</body>
</html>