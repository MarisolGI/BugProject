<?php

function show_project(){
	$servername ="localhost";
	$user = 'bug_bdd';
	$pass = 'bug_bdd';
	$db = 'bug_bdd';


	$conn = new mysqli($servername,$user,$pass,$db);
	if($conn->connect_error){
		die("Unable to connect".$conn->connect_error);
	}
	$table_name="REF_CITY";
	$query_string="select id,description from $table_name";
	$result = mysqli_query($conn,$query_string) or die(mysqli_error($conn));
	if (!$result) {
		$message  = 'Requête invalide : ' . mysqli_error($conn) . "\n";
		$message .= 'Requête complète : ' . $query_string;
		die($message);
	}
	//echo "bbb";
	echo "<table>
    <tr>
    <th>ID</th>
    <th>Description</th>

    </tr>";
	if($result->num_rows>0){
		while($row=mysqli_fetch_array($result)){

			echo "<tr><td>".$row["id"]."</td>";
			echo "<td>".$row["description"]."</td>";

		}
	} else {
		echo "0 reasult";
	}

	mysqli_free_result($result);
	mysqli_close($conn);	

	echo "</table>";
}


?>