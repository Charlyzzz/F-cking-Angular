package repositorios

import java.util.HashSet
import usuario.Tweet
import usuario.Usuario

class RepositorioTweet {

	static private HashSet<Tweet> tweets = new HashSet

	static def init() {
		new Tweet(new Usuario("Erwin"), "Hola")
		new Tweet(new Usuario("Mariano"), "Lag")
		new Tweet(new Usuario("Maggie"), ".>>")
	}

	static def add(Tweet nuevoTweet) {
		tweets.add(nuevoTweet)
	}

	static def allTweets() {
		tweets
	}

	static def tweetsBy(Usuario user) {
		allTweets.filter[tweet|tweet.creador.equals(user)]
	}

	static def getTrendingTopics() {
		allTweets.filter[t|t.trendingTopic]
	}

}
