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
</head>
<body>
	<form:form action= "${s:mvcUrl('CC#gravar').build()}" method="POST" commandName="contato">
		<div>
			<label>Nome</label>
			<form:input path="nome"/>
			<form:errors path="nome"/>
		</div>
		<div>
			<label>e-mail</label>
			<form:input path="email"/>
			<form:errors path="email"/>
		</div>
		<button type="submit">Cadastrar</button>
	</form:form>

</body>
</html>