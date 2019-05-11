<?php

function remote_dial($n)
{
	if(!preg_match("/^\d+$/", $n)) return false;
	
	$url = "http://127.0.0.1:8080/webapi/bgapi?lua%20$n";
	
	$ch = curl_init($url);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 10);
	curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
    curl_setopt($ch, CURLOPT_USERPWD, "fs:123456");
	$result = curl_exec($ch);
	curl_close($ch);

    return strstr($result, '+OK');
}
