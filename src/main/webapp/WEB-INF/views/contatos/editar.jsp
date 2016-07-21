<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>




<!DOCTYPE html>
<html>
<head>
<meta charset= "UTF-8">

<head>
	<title>Agenda</title>
	
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
</head>
<body>
	<h3 align="center">Editar Contato</h3>
	
	
<div class="panel panel-primary">
  <div class="panel-body">
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
	</div>
	</div>
</body>
</html>