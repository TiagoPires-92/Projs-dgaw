<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>

	<form action="/cadastro_funcionario" method="post">
		<fieldset>
			<h2>EMPRESA</h2>
			<fieldset>
				<legend>CADASTRO DE FUNCIONÁRIO</legend>
				<table>
					<tr>
						<td>Nome</td>
					</tr>
					<tr>
						<td><input type="text" name="nome" /></td>
					</tr>
					<tr>
						<td>Salário</td>
					</tr>
					<tr>
						<td><input type="text" name="salario" /></td>
					</tr>
					<tr>
						<td>Setor</td>
					</tr>
					<tr>
						<td><input type="text" name="setor" /></td>
					</tr>
				</table>
				<br> <input type="submit" value="enviar" />
			</fieldset>
		</fieldset>
</body>
</html>