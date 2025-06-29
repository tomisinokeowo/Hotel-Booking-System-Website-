<?php
include 'db_connect.php';
include 'navigation.php';
?>

<!DOCTYPE html>
<html>
<head>
    <title>Home - EASE Rooms</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<h1>Available Rooms</h1>

<?php
$query = "SELECT * FROM Room";
$stid = oci_parse($conn, $query);
oci_execute($stid);

echo "<table>";
echo "<tr><th>Room ID</th><th>Branch ID</th><th>Type</th><th>Size</th></tr>";

while ($row = oci_fetch_array($stid, OCI_ASSOC + OCI_RETURN_NULLS)) {
    echo "<tr>";
    echo "<td>" . $row['ROOMID'] . "</td>";
    echo "<td>" . $row['BRANCHID'] . "</td>";
    echo "<td>" . $row['ROOMTYPE'] . "</td>";
    echo "<td>" . $row['SIZE'] . "</td>";
    echo "</tr>";
}

echo "</table>";

oci_free_statement($stid);
oci_close($conn);
?>

</body>
</html>
