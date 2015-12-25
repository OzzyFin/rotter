-- makes the authenticated user follow the one and only John Shedletsky

local twitter = require(script.Parent.twitterModule)

local result = twitter:Request("POST","friendships/create.json",
	{
		screen_name = "Shedletsky",	
	}
)

print(result)
