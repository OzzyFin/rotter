# rotter

This was made for own uses, but decided to share.

ALL THE APIS ARE FOUND FROM https://dev.twitter.com/rest/public 

The biggest thank you should go to J7mbo (https://github.com/J7mbo) for providing the TwitterAPIExchange.php script. I would of never gotten OAuth right and his script does most of the job.

I don't know if I'm going to add anything to this, it is really simple and made for people as a shortcut to Twitter's REST APIs.

Remember to place all the .php files inside the same folder.

**How to actually use it**

I'll explain the use with my ModuleScript.

First of all you need a webhost to run this all on. Obviously paid hosts are better, but if you are using this just for testing and/or don't have the money to pay for a webhost, I'd recommend https://heroku.com (follow the getting started with PHP tutorial). It took me a while to get the basic stuff down, but it's been working great since then. A bit difficult to manipulate many apps with the cmd bar though. Any webhost with PHP support should work.

Second, you need to create a Twitter Application on https://apps.twitter.com/.

Set ModuleScript's URL and optional secretkey, also all the settings from settings.php 

Now you should be good to go for the actual scripting part (check examples folder for more):

All the ModuleScript contains is one function, Request, which will send a simple POST request to the URL provided.
It holds 3 parameters: RequestMethod (POST or GET), API (all of them can be found from the first link), data (an array of all the parameters for the API)

An example code for updating your status (tweeting) would be:

```lua

local twitter = require(game.ServerScriptService.twitterModule) -- path to the ModuleScript

twitter:Request("POST","statuses/update.json",{ -- POST is the request method, statuses/update.json is the API
  status = "Hello Twitter World" -- status is the parameter (all of these can also be found from the REST API documentation)
})

```


