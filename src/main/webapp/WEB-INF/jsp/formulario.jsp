<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Produto</title>
</head>
<body bgcolor="#F7FE2E">



	<form action="cadastraAtendimento" method="post">
		<fieldset>
			<h2>PETSHOP</h2>
			<fieldset>
				<legend>CADASTRO DE CLIENTE</legend>
				<table>
					<tr>
						<td>Nome Dono</td>
					</tr>
					<tr>
						<td><input type="text" name="nomedono" /></td>
					</tr>
					<tr>
						<td>Nome Animal</td>
					</tr>
					<tr>
						<td><input type="text" name="nomeanimal" /></td>
					</tr>
					<tr>
						<td>Raça</td>
					</tr>
					<tr>
						<td><input type="text" name="raca" /></td>
					</tr>
					<tr>
						<td>Serviço</td>
					</tr>
					<tr>
						<td><select name="servico"><option>Banho</option>
								<option>Tosa</option>
								<option>Veterinaria</option></select></td>
					</tr>

				</table>
				<br> <input type="submit" value="enviar" />
			</fieldset>
		</fieldset>
	</form>
</body>
</html>