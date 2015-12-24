<?php
	function _URLEncode($array){
		$a = array();
		foreach ($array as $k => $v){
			$a[] = urlencode($k)."=".urlencode($v);
		}
		return implode("&",$a);
	}
	
	require_once("settings.php");
	if (isset($_POST["key"]) and $_POST["key"] == $settings["secretkey"])
	{
		
		require_once("TwitterAPIExchange.php");
		
		$requestmethod = $_POST["method"];
		$url = "https://api.twitter.com/1.1/";
		$url = $url . $_POST["api"];

		$twitter = new TwitterAPIExchange($settings);
		if ($requestmethod == "POST") {
			$postfields = json_decode($_POST["json"],true);
			echo $twitter->buildOauth($url, $requestmethod)
				->setPostfields($postfields)
				->performRequest();
		}elseif($requestmethod == "GET"){
			$jsondata = json_decode($_POST["json"],true);
			$getfield = "?"._URLEncode($jsondata);
			
			echo $twitter->setGetfield($getfield)
				->buildOauth($url,$requestmethod)
				->performRequest();
		}else{
			echo 'request method has to be either POST or GET';
		}
	}else{
		echo "you don't have access to here";
	}
?>
