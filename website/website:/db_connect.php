<?php
// Connect to Oracle DB

$username = 'yourusername'; // <-- your Keele Oracle username
$password = 'yourpassword'; // <-- your password
$connection_string = '//db.keele.ac.uk:1521/orcl'; // <-- adjust if different

$conn = oci_connect($username, $password, $connection_string);

if (!$conn) {
    $e = oci_error();
    echo "Failed to connect to Oracle: " . htmlentities($e['message']);
    exit;
}
?>
