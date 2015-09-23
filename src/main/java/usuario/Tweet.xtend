package usuario

import java.util.Date
import org.eclipse.xtend.lib.annotations.Accessors
import repositorios.RepositorioTweet

@Accessors
class Tweet {

	String texto
	Date fecha
	int retweets = 0
	Usuario creador

	new(Usuario usuario, String string) {
		this.creador = usuario
		this.texto = string
		this.fecha = new Date
		RepositorioTweet.add(this)
	}

	new() {
	}

	def trendingTopic() {
		retweets > 2
	}

	def retweet() {
		retweets++
	}
}
