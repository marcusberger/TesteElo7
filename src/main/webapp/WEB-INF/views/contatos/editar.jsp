<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>




<!DOCTYPE html>
<html>
<head>
<meta charset= "UTF-8">

<head>
	<title>Agenda</title>
</head>
<body>
	<h3>Editar Contato</h3>
	
	<form:form action="../editar" method="put" commandName="contato">
		<form:hidden path="id" />
		<table>
			<tr>
				<td>Nome: <form:input path="nome" /></td>
				<td>E-mail: <form:input path="email" /></td>
				<td><input type="submit"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>