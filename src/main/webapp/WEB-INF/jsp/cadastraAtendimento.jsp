<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.aula.Petshop,java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro</title>
</head>
<body>

	<%
	String nomedono = request.getParameter("nomedono");
	String nomeanimal = request.getParameter("nomeanimal");
	String raca = request.getParameter("raca");
	String servico = request.getParameter("servico");
	
	Petshop ps = new Petshop();
	ps.nomedono = nomedono;
	ps.nomeanimal = nomeanimal;
	ps.raca = raca;
	ps.servico = servico;
	
	
	ArrayList<Petshop> listaPetshop = (ArrayList<Petshop>)  application.getAttribute("lista_atendimento");//BUSCA
	if(listaPetshop == null){	
		 listaPetshop = new ArrayList<Petshop>(); // CRIA LISTA
		application.setAttribute("lista_atendimento", listaPetshop); // 
	}
	
	listaPetshop.add(ps);
	

	for(Petshop p : listaPetshop){
		out.println("<br>Nome Dono: " + p.nomedono);
		out.println(" <br>Nome Animal: " + p.nomeanimal); 
		out.println(" <br>Raça: " + p.raca); 
		out.println(" <br>Serviço: " + p.servico); 
		out.println("<br>--------------------------------------------------------------");
	}
	
	

%>

</body>
</html>