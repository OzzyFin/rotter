

-- THE MODULESCRIPT FOR ROBLOX --

local secretkey = "123456789" -- should be the same key as in settings.php
local url = "https://www.example.com/handler.php" -- the url for handler.php on your website

local twitter = {}

twitter.Request = function(self,method,api,data)
	if type(method) ~= "string" then
		error 'request method must be a string'
	end
	method = method:upper()
	data = data or {}
	return game.HttpService:PostAsync(url,"key="..secretkey.."&method="..method.."&api="..api.."&json="..game.HttpService:JSONEncode(data),Enum.HttpContentType.ApplicationUrlEncoded)
end

return twitter

