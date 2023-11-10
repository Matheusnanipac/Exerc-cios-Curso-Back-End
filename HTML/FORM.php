<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Formulariode Cadastro</title>
</head>
<body>


<h1>Cadastro de Usuarios</h1>
<form action="teste.php" method="POST">
			<label>Nome:</label>
			<input type="text" name="Nome" placeholder="Digite seu nome completo"><br>

			<label>Endereço:</label>
			<input type="text" name="Endereço" placeholder="Endereço completo"><br>

			<label>Número:</label>
			<input type="text" name="número da casa" placeholder="Digite o número da sua residencia"><br>

			<label>Bairro:</label>
			<input type="text" name="Bairro" placeholder="Bairro em que você mora"><br>

			<label>Cidade:</label>
			<input type="text" name="Cidade" placeholder="Cidade em que você mora"><br>

			<label>Uf:</label>
			<input type="text" name="Unidade Federativa" placeholder="Estado em que você mora"><br>

			<label>Telefone:</label>
			<input type="texte" name="Telefone para contato" placeholder="Digite seu numero de telefone"><br>
			
			<label>Sexo:</label>	
			<select name="Sexo">

				<option>Selecione</option>
				<option>Masculino</option>
				<option>Feminino</option>
				<option>Outro</option>

			</select><br>
			<input type="submit" name="enviar" >

		</form>


</body>
</html>