<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.aula.modelos.*,java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RESULTADO DO CADASTRO DE FUNCIONARIOS</title>
</head>
<body>

	<%
		
	String nome = request.getParameter("nome");
	String salario = request.getParameter("salario");
	String setor = request.getParameter("setor");

	FuncionarioModelo ps = new FuncionarioModelo();
	ps.nome = nome;
	ps.salario = salario;
	ps.setor = setor;

	ArrayList<FuncionarioModelo> listaFuncionarios = (ArrayList<FuncionarioModelo>) application
			.getAttribute("lista_atendimento");//BUSCA
	if (listaFuncionarios == null) {
		listaFuncionarios = new ArrayList<FuncionarioModelo>(); // CRIA LISTA
		application.setAttribute("lista_atendimento", listaFuncionarios); // 
	}

	listaFuncionarios.add(ps);

	for (FuncionarioModelo p : listaFuncionarios) {
		out.println("<br>Nome: " + p.nome);
		out.println(" <br>Salario: " + p.salario);
		out.println(" <br>Setor: " + p.setor);

		out.println("<br>--------------------------------------------------------------");
	}
	%>
</body>
</html>
