/* Question 6: Create a user friendly application that 
 * prompts for a player’s name and prints their entire 
 * schedule, using a stored procedure built on one of the 
 * solutions to question 4b in Assignment 3.*/
 
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
$lastName = readline("Enter player last name: ");

$sql = "CALL playerSchedule('$firstName', '$lastName')";	
if (!($result = $conn->query($sql))) {
    echo "Call failed " . $conn->error . "\n";
}

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo $row["first_name"] . " " . $row["last_name"] .
        " plays the ";
		echo $row["against"] . " on " .  $row["DATE(Time_Of_Game)"] .
        " at " . $row["TIME(Time_Of_Game)"];
		echo "\nThere coach is " . $row["lead_by"] . ".\n";
		if($row["Bring_Snacks"]) {
			echo $row["first_name"] . " " . $row["last_name"] . 
            " brings the snacks.\n";
		} else {
			echo "They bring the snacks.\n";
		}	
    }
} else {
    echo "0 results";
}

$conn->close();
?>
