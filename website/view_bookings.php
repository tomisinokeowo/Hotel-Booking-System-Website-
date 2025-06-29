<?php
include 'db_connect.php';
include 'navigation.php';
?>

<!DOCTYPE html>
<html>
<head>
    <title>View Bookings</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<h1>Current Bookings</h1>

<?php
$query = "SELECT * FROM Booking";
$stid = oci_parse($conn, $query);
oci_execute($stid);

echo "<table>";
echo "<tr><th>Booking ID</th><th>Customer ID</th><th>Room ID</th><th>Date From</th><th>Date To</th></tr>";

while ($row = oci_fetch_array($stid, OCI_ASSOC + OCI_RETURN_NULLS)) {
    echo "<tr>";
    echo "<td>" . $row['BOOKINGID'] . "</td>";
    echo "<td>" . $row['CUSTOMERID'] . "</td>";
    echo "<td>" . $row['ROOMID'] . "</td>";
    echo "<td>" . $row['DATEFROM'] . "</td>";
    echo "<td>" . $row['DATETO'] . "</td>";
    echo "</tr>";
}

echo "</table>";

oci_free_statement($stid);
oci_close($conn);
?>

</body>
</html>
