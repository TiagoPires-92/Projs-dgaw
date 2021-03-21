<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
<head>

<style type="text/css">
  .tabela tr:nth-child(odd) {
    background-color:#fff;
  }  
  .tabela tr:nth-child(even) {
    background-color:#ccc;
  } 
</style>
	<div class="container">
	
	
		BEM VINDO ${name} A PÁGINA JSP !!! <br> <br>

		<%
		//aqui é jsp
		List<String> listaProdutos = new ArrayList<String>();

		List<Double> listaPreco = new ArrayList<Double>();

		listaProdutos.add("TV");
		listaPreco.add(2000.00);
		listaProdutos.add("Rádio");
		listaPreco.add(1200.00);
		listaProdutos.add("Games");
		listaPreco.add(4000.00);
		listaProdutos.add("Panelas");
		listaPreco.add(200.00);
		listaProdutos.add("Tablet");
		listaPreco.add(2500.00);
		listaProdutos.add("Relógio");
		listaPreco.add(80.00);
		listaProdutos.add("Pulseira");
		listaPreco.add(30.00);
		listaProdutos.add("Smartphone");
		listaPreco.add(1000.00);
		listaProdutos.add("Smartwatch");
		listaPreco.add(1800.00);
		listaProdutos.add("Pneu");
		listaPreco.add(400.00);
		listaProdutos.add("Chocolate");
		listaPreco.add(6.00);
		listaProdutos.add("Jarra");
		listaPreco.add(15.00);
		listaProdutos.add("Copo");
		listaPreco.add(5.00);
		listaProdutos.add("Faca");
		listaPreco.add(10.00);
		listaProdutos.add("Colher");
		listaPreco.add(2.00);
		listaProdutos.add("Toalha");
		listaPreco.add(20.00);
		listaProdutos.add("Travesseiro");
		listaPreco.add(50.00);
		listaProdutos.add("Almofada");
		listaPreco.add(35.00);
		listaProdutos.add("Abajur");
		listaPreco.add(120.00);
		listaProdutos.add("Lâmpada");
		listaPreco.add(7.00);
		listaProdutos.add("Sabão");
		listaPreco.add(1.50);
		listaProdutos.add("Sabonete");
		listaPreco.add(2.20);
		listaProdutos.add("Shampoo");
		listaPreco.add(35.00);
		listaProdutos.add("Barbeador");
		listaPreco.add(21.00);
		listaProdutos.add("Cooler");
		listaPreco.add(166.00);
		listaProdutos.add("Geladeira");
		listaPreco.add(2100.00);
		listaProdutos.add("Microondas");
		listaPreco.add(740.00);
		listaProdutos.add("Cafeteira");
		listaPreco.add(181.00);
		listaProdutos.add("Sanduicheira");
		listaPreco.add(40.00);
		listaProdutos.add("Batedeira");
		listaPreco.add(90.00);
		listaProdutos.add("Liquidificador");
		listaPreco.add(60.00);
		listaProdutos.add("Edredom");
		listaPreco.add(148.00);
		listaProdutos.add("Cobertor");
		listaPreco.add(368.00);
		listaProdutos.add("Bide");
		listaPreco.add(79.00);
		listaProdutos.add("Mesa");
		listaPreco.add(189.00);

		out.println("<table border=1 class='tabela'>");
		
		out.println("<tr>");
		out.println("<td>");
		out.println("PRODUTO");
		out.println("</td>");
		out.println("<td>");
		out.println("PREÇO R$");
		out.println("</td>");
		out.println("</tr>");

		for (int i = 0; i < listaProdutos.size(); i++) {

			out.println("<tr>");
			out.println("<td>");
			out.println(listaProdutos.get(i));
			out.println("</td>");
			out.println("<td>");
			out.println(listaPreco.get(i));
			out.println("</td>");
			out.println("<td>");
			out.println("<input type = 'button' value='Editar'/>");
			out.println("</td>");
			out.println("</tr>");

		}

		out.println("</table>");
		%>
	</div>

</head>
</body>
</html>
