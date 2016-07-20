<?php
header('Content-Type: application/json');

$queryResult=getDescription($_POST["pt"]);

echo $queryResult;

function getDescription($pt){
	$con=mysqli_connect('localhost','root','','my_hyp16');
	if (!$con) {
    	//echo 'Error: Unable to connect to MySQL.' . PHP_EOL;
    	//echo 'Debugging error: ' . mysqli_connect_errno() . PHP_EOL;
    	//echo 'Debugging error: ' . mysqli_connect_error() . PHP_EOL;
    	exit;
	}
	//echo 'Success: A proper connection to MySQL was made! The my_db database is great.' . PHP_EOL;
    //echo "<br>";
	//echo 'Host information: ' . mysqli_get_host_info($con) . PHP_EOL;
    //echo "<br>";
    
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}

mysqli_select_db($con,"ajax_demo");
$sql="SELECT * FROM device WHERE Categoria='$pt'";

$result = mysqli_query($con,$sql);

if($result->num_rows>0)
	{
		$myArray=array();
		while($row=$result->fetch_array(MYSQL_ASSOC)){
			$myArray[]=$row;
			}
	}

	mysqli_close($con);
	return json_encode($myArray);
    }




?>