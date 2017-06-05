<?php

function show_project(){
	$servername ="localhost";
	$user = 'bug_bdd';
	$pass = 'bug_bdd';
	$db = 'bug_bdd';

	//Create connection


	//Show data from table project
	$conn = new mysqli($servername,$user,$pass,$db);
	//Check connection
	if($conn->connect_error){
		die("Unable to connect".$conn->connect_error);
	}
	$sql = "select id,name from project";
	$result = $conn->query($sql);

	if($result->num_rows>0){
		while($row=$result->fetch_assoc()){
			echo'<div> <table>
  <tr>
    <th>'.$row["id"].'</th>
	<th>'.$row["name"].'</th>
  </tr>

</table></div>';	}
	} else {
		echo "0 results";
	}

	$conn->close();}

	?>