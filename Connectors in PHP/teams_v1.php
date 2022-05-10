/* Question 1: Create an application that connects 
 * to the database, submits a SELECT query for a 
 * list of team names, and displays the results.*/
 
<?php
$servername = "localhost";
$username = readline("Enter MySQL username: ");
$password = readline("Enter MySQL password: ");
$dbname = readline("Enter database name: ");

$conn = new mysqli($servername, $username, $password, $dbname);

if($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
} else {
	echo "Connected successfully\n";
}

$sql = "SELECT team FROM Teams";	
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
