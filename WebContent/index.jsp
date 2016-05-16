<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>
Bem vindo ao nosso gerenciador de empresas!<br/>

<c:if test="${usuarioLogado!=NULL}">
	Voce esta logado como ${usuarioLogado.email} <br />
</c:if>

<form action="executa?tarefa=NovaEmpresa" method="post">
    Nome: <input type="text" name="nome" /><br />
    <input type="submit" value="Enviar" />
</form>

<form action="executa?tarefa=BuscaEmpresa" method="get">

<input type="text" name="filtro" /> <br />
<input type="submit" value="Buscar" />

</form>

<form action="login" method="post">
	E-mail: <input type="text" name="email" /> <br />
	Senha: <input type="password" name="senha" /> <br />
	<input type="submit" value="Enviar">
</form>

<form action="executa?tarefa=Logout" method="post">

	<input type="submit" value="Logout" />

</form>
</body>
</html>