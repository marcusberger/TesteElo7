<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset= "UTF-8">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="resources/css/tabela.css">
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery.quick.search.js"></script>
<title>Agenda</title>
</head>
<body>
	<h1 align="center">Contatos</h1>
	
	<div>${sucesso}</div>
	<div class="panel panel-default">	  		
		<table  class="lista-contatos" class="table table-striped">	
			<thead>
				<tr>
            		<th align="center">Nome</th>
            		<th>E-mail</th> 
            		<th>Recursos</th> 
        		</tr>
				<tr>
					<div><input class="input-search" alt="lista-contatos" 
					placeholder="Buscar nesta lista"/></div>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${contatos }" var="contato">
					<tr>
						<td>
							<a href="${s:mvcUrl('CC#detalheContatos').arg(0,contato.id).build() }">${contato.nome}</a>
						</td>
						<td>
							<p> ${contato.email}</p>
						</td>
						<td class="alinhadoDireita">
							<a button type="button" class="btn btn-danger btn-xs" href="<c:url value='/contatos/remove/${contato.id}'/>" >Remover</a>
							<a button type="button" class="btn btn-primary btn-xs" href="<c:url value='/contatos/editar/${contato.id}'/>">Editar</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>	
		</table>
	</div>
		<div><a button type="button" class="btn btn-primary btn-xs" href="<c:url value='/contatos/form'/>">Adicionar</a></div>
</body>
</html>