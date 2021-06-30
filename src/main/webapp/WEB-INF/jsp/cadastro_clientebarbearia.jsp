<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<!--  Scripts-->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!--Import Google Icon Font-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<body>
	<script type="text/javascript">
		$(document).ready(function() {
			$('select').material_select();
		});
	</script>
	<nav class="#42a5f5 blue lighten-1" role="navigation">
		<div class="nav-wrapper container">
			<a id="logo-container" href="index.php" class="brand-logo">KING
				BARBER SHOP</a>
			<ul class="right hide-on-med-and-down">
				<li><a href="#">HOME</a></li>
				<li><a href="#">AGENDAR</a></li>
				<li><a href="#">CONTATO</a></li>

			</ul>


		</div>
	</nav>
	<h5 class="header center black-text">Cadastrar Cliente</h5>
	<div class="container">
		<div class="section">
			<!-- FORMULARIO -->
			<fieldset>
				<form class="col s12" action="/cadastro_cliente" method="post">

					<div class="row">
						<div class="input-field col s6">
							<input name="nome" type="text" class="validate"> <label
								for="nome">Nome</label>
						</div>

						<div class="input-field col s6">
							<input id="email" type="email" class="validate"> <label
								for="email">Email</label>
						</div>
					</div>

					<div class="row">
						<div class="input-field col s3">
							<input name="telefone" type="text" class="validate"> <label
								for="telefone">Telefone</label>
						</div>
					</div>

					<div class="row">
						<div class="input-field col s3">
							<select name='servico'>
								<option value="" disabled selected>Escolha o serviço</option>
								<option value="barba">Barba</option>
								<option value="cabelo">Cabelo</option>
								<option value="sobracelha">Sobrecelha</option>

							</select>
						</div>
					</div>

					<div class="row">
						<div class="input-field col s3">
							<input name="data" type="date" class="validate">

						</div>

						<div class="row">
							<div class="input-field col s3">
								<input name="hora" type="time" class="validate">

							</div>
						</div>
						<div class="row col s3">
							<button
								class="btn #42a5f5 blue lighten-1 waves-effect waves-light"
								type="submit" name="enviar">
								Enviar <i class="material-icons right">send</i>
							</button>
						</div>
				</form>
			</fieldset>



		</div>
	</div>


	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- FOOTER -->
	<footer class="page-footer #42a5f5 blue lighten-1">
		<div class="container">
			<div class="row">
				<div class="col l6 s12">
					<h5 class="white-text">Endereco</h5>
					<p class="grey-text text-lighten-4">Av. Assis Brasil, 8787 -
						Sarandi, Porto Alegre - RS, 91140-001.</p>
				</div>
				<div class="col l4 offset-l2 s12">
					<h5 class="white-text">Horario de Funcionamento</h5>
					<table>

						<tr>
							<th>Seg a Sex:</th>
							<th>09:30 - 12:00 | 14:00 - 19:00</th>

						</tr>
						<tr>
							<th>Sabado:</th>
							<th>09:30 - 12:00 | 13:30 - 18:00</th>
						</tr>

					</table>
				</div>
			</div>
		</div>
		<div class="footer-copyright">
			<div class="container">Â© 2021 Desenvolvido</div>
		</div>
	</footer>







	<script>
			M.AutoInit();
		</script>
</body>
</html>