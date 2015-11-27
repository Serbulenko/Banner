<?php
	$db = mysql_connect("localhost","root","");
	mysql_select_db("test_boston",$db); 

	$ip_address = $_SERVER["REMOTE_ADDR"];
	$view_date = date("F j, Y, g:i a");
	$page_url = $_SERVER['HTTP_REFERER'];
	$user_agent = $_SERVER["HTTP_USER_AGENT"];

	$result = mysql_query("SELECT * FROM insegment WHERE ip_address = '$ip_address' AND user_agent = '$user_agent' AND page_url = '$page_url'",$db);
	$row = mysql_fetch_assoc($result);
	
	if (!empty($row)) {
		$result = mysql_query ("UPDATE insegment SET views_count = views_count + 1, view_date = '$view_date' WHERE ip_address = '$ip_address' AND user_agent = '$user_agent' AND page_url = '$page_url'",$db);
	} else{
		$result = mysql_query("INSERT INTO insegment (ip_address,user_agent,view_date,page_url,views_count) VALUES ('$ip_address','$user_agent','$view_date','$page_url','1')",$db);
		}
?>