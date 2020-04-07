<?php
session_start();

require_once('shodan-PHP-REST-API/src/Shodan.php');
require_once('shodan-PHP-REST-API/src/Colors.php');

$key = 'UUFuyEaMCkYneMqmlNTImLNl5CwLdpGl'; // SHODAN KEY
$client = new Shodan($key, TRUE);
$colors = new Colors();


// return all services that have been found on the given host IP
$array = $client->ShodanHost(array(
	'ip' => '31.13.65.36', //
));
/*print_r($array);
echo json_encode($array, JSON_PRETTY_PRINT);*/



// returns number of results that contains 'Niagara Web Server'
/*var_dump($client->ShodanHostCount(array(
  'query' => 'Disallow',
)));*/

// returns summary information
$array2 = $client->ShodanHostSearch(array(
	'query' => 'Disallow',
	//limit=None,
));
print_r($array2);
echo json_encode($array2, JSON_PRETTY_PRINT);

// determine which filters and what parameters for filters are being used
/*var_dump($client->ShodanHostSearchTokens(array(
	'query' => 'Niagara Web Server country:"IT"',
)));*/
?>