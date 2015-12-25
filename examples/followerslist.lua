-- returns a list of my few followers

local twitter = require(script.Parent.twitterModule)

local result = twitter:Request("GET","followers/list.json",
	{
		screen_name = "OzzyOnRBX"
	}
)

result = game.HttpService:JSONDecode(result)

for k,v in pairs(result["users"]) do 
	print(k,v)
end
