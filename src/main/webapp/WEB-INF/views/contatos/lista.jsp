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
<link rel="stylesheet" href="resources/resourcesLista/css/lista.css">

<script src="resources/js/bootstrap.min.js"></script> 

</head>
<body>

	<h1 align="center">Contatos</h1>
	
	<div>${sucesso}</div>

<div class="panel panel-default">	  		
	<table class="table table-striped">
		
		<c:forEach items="${contatos }" var="contato">
			<tr>
				<td class="noBorder">
					<a href="${s:mvcUrl('CC#detalheContatos').arg(0,contato.id).build() }">${contato.nome}</a>

				
				
					<td class="alinhadoDireita">
						<a button type="button" class="btn btn-danger btn-xs" href="<c:url value='/contatos/remove/${contato.id}'/>" >Remover</a>
						<a button type="button" class="btn btn-primary btn-xs" href="<c:url value='/contatos/editar/${contato.id}'/>">Editar</a>
						
				</td>
			</tr>

		</c:forEach>
		
	</table>
</div>

</body>
</html>