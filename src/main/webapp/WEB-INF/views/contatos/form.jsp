<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html>
<html>
<head>
<meta charset= "UTF-8">
<title>Agenda</title>

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
<script src="resources/js/bootstrap.min.js"></script> 
<body>
<div class="panel panel-default">
  	<div class="panel-body">

	<h1>Adicionar Contato</h1>
	
  		
		<form:form action= "${s:mvcUrl('CC#gravar').build()}" method="POST" commandName="contato" enctype="multipart/form-data">
		
		
		<div class="input-group input-group-sm">
  			<span class="input-group-addon" id="sizing-addon3">Nome</span>
  			<form:input path="nome" type="text" class="form-control" aria-describedby="sizing-addon3"/>
			<form:errors path="nome"/>
		</div>
		
		<div>
			<label>e-mail</label>
			<form:input path="email"/>
			<form:errors path="email"/>
		</div>
		<div>
			<label>Foto</label>
			<input name="foto" type="file"/>
		</div>
		<button type="submit">Cadastrar</button>
	</div>
</div>
	</form:form>

</body>
</html>