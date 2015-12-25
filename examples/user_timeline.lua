local twitter = require(script.Parent.twitterModule)

local result = twitter:Request("GET","statuses/user_timeline.json",
	{
		screen_name = "OzzyOnRBX",	
		count = "5"
	}
)

local t = game.HttpService:JSONDecode(result)

for k,v in pairs(t) do
	print(k,v)
end
