<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset= "UTF-8">
<title>Agenda</title>
</head>
<body>

	<h1>Agenda</h1>
	
		<table>
			<tr>
				<div><a button type="button" class="btn btn-primary btn-xs" href="<c:url value='/contatos'/>">Adicionar</a></div>
			</tr>
	</table>

</body>
</html>