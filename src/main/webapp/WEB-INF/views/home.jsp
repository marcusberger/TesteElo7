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
				<td><a href="<c:url value='/contatos/listar/${contato.id}'/>" >Listar Contatos</a></td>
			</tr>
	</table>

</body>
</html>