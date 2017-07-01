<%@page import="model.Produto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Produtos Cadastrados</title>
</head>
<body>
<%
List<Produto> lista = (List<Produto>) request.getAttribute("lista");
%>
<table>
  <% for(Produto p : lista){ %>
    <tr>
      <td><%=p.getIdProduto()%></td>
      <td><%=p.getNome()%></td>
      <td><%=p.getPreco()%></td>
    </tr>
  <%} %>
</table>

   
    

</body>
</html>