<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
		<script>
			var urlUsuarios = window.location.href + "service/usuarios/todos";
			$.getJSON(urlUsuarios, function(data){
				if (data.length !== 0){
					$.each(data, function(i, usuario) {
						$("<li/>", { "text": usuario.nome })
							.append(" ").append($("<a/>", {
					  		 	"text" : window.location.href + "service/usuarios/obterusuario/" + usuario.id,
							  	"href" : window.location.href + "service/usuarios/obterusuario/" + usuario.id
						})).appendTo("#usuarios");
					});
				} else {
					$("<li/>", {"text" : "Nenhum usuario."}).appendTo("#usuarios");
				}
			});
		</script>
	</head>
	<body>
		<h2>Links NetworkMi 1.0.2</h2>
		<h3>Usu�rio</h3>
		<a href="novoUsuario">Criar novo usu�rio</a>
		<br />
		<a href="listaUsuarios">Listar Usu�rios</a>
		<br />
		<a href="service/usuarios/todos">Listar Usu�rios (REST)</a>
		<br />
		<br />
		<span>Obter Usu�rio (REST)</span>
		<br />
		<ul id='usuarios'>
	</body>
</html>