/* Question 5: Create an application that uses the 
 * player’s team stored procedure with arguments,
 * and prints the player’s team name, in some pretty 
 * way, that comes back as the result.*/

<?php
$servername = "localhost";
$username = readline("Enter MySQL username: ");
$password = readline("Enter MySQL password: ");
$dbname = readline("Enter MySQL database name: ");

$conn = new mysqli($servername, $username, $password, $dbname);

if($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
} else {
	echo "Connected successfully\n";
}

$firstName = readline("Enter player first name: ");
$lastName = readline("Enter player first name: ");

$sql = "CALL playerWithTeam('$firstName', '$lastName')";	
if (!($result = $conn->query($sql))) {
    echo "Call failed " . $conn->error . "\n";
}

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo $row["first_name"] . " " .  $row["last_name"] 
        . " is on the " . $row["Team"] . "\n";
    }
} else {
    echo "0 results";
}

$conn->close();
?>
