local twitter = require(script.Parent.twitterModule)

local result = twitter:Request("POST","statuses/retweet.json",
	{
		id = "679029679123210240"
	}
)
