<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Formulario entrada</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1 style="text-align: center">Ejercicio de suma de números
			primos de un número positivo ingresado</h1>

		<form action="servletSuma" method="post">
			<div class="form-group">
				<label for="numero">Ingrese el número a evaluar:</label> <input
					type="text" class="form-control" id="numero" name="numero"
					placeholder="Número positivo > 1"><br>
			</div>
			<button class="btn btn-primary" type="submit">Enviar</button>
		</form>
		<p style="text-align: center">
			<%
			String sumaprimos = "";
			sumaprimos = String.valueOf(request.getAttribute("resultado"));
			if (sumaprimos.equals("invalido")){
				out.print("El número ingresado es inválido, intente de nuevo.");	
			}else{
				out.print("La suma de los números primos menores al número ingresado es: "+ sumaprimos);
			}
			%>
		</p>
	</div>
</body>
</html>