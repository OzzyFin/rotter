local twitter = require(script.Parent.twitterModule)

twitter:Request("POST","statuses/retweet.json",
	{
		id = "679029679123210240"
	}
)
