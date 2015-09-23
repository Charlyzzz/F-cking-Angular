package usuario

import excepciones.TweetMuyLargo
import org.eclipse.xtend.lib.annotations.Accessors
import repositorios.RepositorioUsuario

@Accessors
class Usuario {
	String nombre

	new(String string) {
		this.nombre = string
		RepositorioUsuario.add(this)
	}

	def twittear(String texto) {
		validarLonguitud(texto)
		new Tweet(this, texto)
	}

	def retweetear(Tweet tweet) {
		tweet.retweet
	}

	def validarLonguitud(String string) {
		if (string.length > 10)
			throw new TweetMuyLargo
	}

}
