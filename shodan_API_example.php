
<!DOCTYPE html>
<html>
<body>
<?php
// Initialize the session
session_start();
require_once('shodan-PHP-API/src/Shodan.php');
require_once('shodan-PHP-API/src/Colors.php');

$key = 'Insert API Key';
$client = new Shodan($key, TRUE);
$colors = new Colors();

$array    = $client->ShodanHost(array(
'ip' => 'Insert IP Address of Target', //
));

//Search for term -- careful because this will load any HTML and may unwillingly redirect you to 
// $array = $client->ShodanHostSearch(array(
// 	'query' => 'apache',
// ));
//

//Uses Filter from paid API
// $array = $client->ShodanScan(array(
// 	'ips' => '198.20.69.0/24',
// ));

// print_r($array);
// echo json_encode($array, JSON_PRETTY_PRINT);

//prepare data for parsing
$json = json_encode($array);
$obj = json_decode($json);

// print $obj->{'org'};
// print $obj->{'isp'};



foreach($obj->{'vulns'} as $vuln){
  echo $vuln;
  echo "<br>";
}



// foreach($obj->{'matches'} as $machine){
//   echo $machine->{'ip'};
//   echo $machine->{'description'};
//   echo "<br><br>";
// }


// try {
//   var_dump($client->ShodanHost(array(
// 	'ip' => '31.13.65.36', // https://www.facebook.com/
// )));
// } catch (Exception $e) {
// 	echo $e->getMessage()."\n";
// }


 ?>
</body>
</html>
