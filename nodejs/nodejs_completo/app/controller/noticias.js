module.exports.noticias = function(application, req, res){
	var connection = application.config.dbConnection(); //Atribui o método de conexão com o banco de dados em uma variável.
		
	var noticiasModel = new application.app.models.NoticiasDAO(connection);

	noticiasModel.getNoticias(function(error, result){
		res.render('noticias/noticias', {noticias: result});
	});
}

module.exports.noticia = function(application, req, res){
	var connection = application.config.dbConnection();

	var noticiaModel = new application.app.models.NoticiasDAO(connection);

	noticiaModel.getNoticia(function(error, result){
		res.render('noticias/noticia', {noticia: result});
	});
}