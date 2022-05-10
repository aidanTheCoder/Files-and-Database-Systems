/* Question 4:  Create an application that uses 
 * the team list stored procedure with no 
 * arguments, and prints the list of team names 
 * in the result.*/
 
<?php
$servername = "localhost";
$username = readline("Enter MySQL username: ");
$password = readline("Enter MySQL password ");
$dbname = readline("Enter database name: ");

$conn = new mysqli($servername, $username, $password, $dbname);

if($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
} else {
	echo "Connected successfully\n";
}

/* Returns a simple SELECT queries. 
 * The query is called via procedure. */
 
$sql = "CALL showTeams()";	
if (!($result = $conn->query($sql))) {
    echo "Call failed " . $conn->error . "\n";
}

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo $row["team"] . "\n";
    }
} else {
    echo "0 results";
}

$conn->close();
?>
