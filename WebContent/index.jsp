<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>



 <head> <link rel="stylesheet" type="text/css" href="reset.css">
 
 
 <link rel="stylesheet" type="text/css" href="styles.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<h3>Formulário dos Produtos -- CADASTRAR TUDO </h3>
	<form action="Controle?cmd=gravar" method="post">
		Nome: <br>
		<input type="text" name="nome">
		<br><br>
		Preço: <br>
		<input type="text" name="preco">
		<br><br>
		<input type="submit" value="CADASTRAR">
		<br><br>
			<input type="submit" value="TESTE">
		
	</form>
	${msg }
	
</body>
</html>