package controller

import org.uqbar.xtrest.api.Result
import org.uqbar.xtrest.api.XTRest
import org.uqbar.xtrest.api.annotation.Controller
import org.uqbar.xtrest.api.annotation.Get
import org.uqbar.xtrest.http.ContentType
import repositorios.RepositorioTweet
import org.uqbar.xtrest.json.JSONUtils

@Controller
class TwitterController {

	extension JSONUtils = new JSONUtils

	@Get('/Alltweets')
	def Result tweets() {
		response.contentType = ContentType.APPLICATION_JSON
		ok(RepositorioTweet.allTweets.toJson)

	}

	def static void main(String[] args) {
		RepositorioTweet.init
		XTRest.start(TwitterController, 9000)
	}

}
