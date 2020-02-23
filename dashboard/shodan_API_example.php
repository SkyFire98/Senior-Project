
<!DOCTYPE html>
<html>
<body>
<?php
// Initialize the session
session_start();
require_once('shodan-PHP-API/src/Shodan.php');
require_once('shodan-PHP-API/src/Colors.php');

$key = 'INERSERT KEY HERE';
$client = new Shodan($key, TRUE);
$colors = new Colors();

// $array    = $client->ShodanHost(array(
// 'ip' => '72.48.88.130', // https://www.QuantumITGroup.com/
// ));

$array = $client->ShodanQuerySearch(array(
	'ips' => '129.59.0.0/21',
));


//Uses Filter from paid API
// $array = $client->ShodanScan(array(
// 	'ips' => '198.20.69.0/24',
// ));

// print_r($array);
echo json_encode($array, JSON_PRETTY_PRINT);

//prepare data for parsing
$json = json_encode($array);
$obj = json_decode($json);

// print $obj->{'org'};
// print $obj->{'isp'};



// foreach($obj->{'vulns'} as $vuln){
//   echo $vuln;
//   echo "<br>";
// }



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
