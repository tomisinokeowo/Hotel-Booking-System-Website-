<?php
include 'db_connect.php';
include 'navigation.php';
?>

<!DOCTYPE html>
<html>
<head>
    <title>Make Booking</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<h1>Book a Room</h1>

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $customerID = $_POST['customerID'];
    $roomID = $_POST['roomID'];
    $dateFrom = $_POST['dateFrom'];
    $dateTo = $_POST['dateTo'];

    $query = "INSERT INTO Booking (BookingID, CustomerID, RoomID, DateFrom, DateTo)
              VALUES (BOOKING_SEQ.NEXTVAL, :customerID, :roomID, TO_DATE(:dateFrom, 'YYYY-MM-DD'), TO_DATE(:dateTo, 'YYYY-MM-DD'))";

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ':customerID', $customerID);
    oci_bind_by_name($stid, ':roomID', $roomID);
    oci_bind_by_name($stid, ':dateFrom', $dateFrom);
    oci_bind_by_name($stid, ':dateTo', $dateTo);

    if (oci_execute($stid)) {
        echo "<p>Booking Successful!</p>";
    } else {
        $e = oci_error($stid);
        echo "<p>Error: " . htmlentities($e['message']) . "</p>";
    }

    oci_free_statement($stid);
    oci_close($conn);
} else {
?>

<form method="post" action="booking.php">
    Customer ID: <input type="text" name="customerID" required><br>
    Room ID: <input type="text" name="roomID" required><br>
    Date From: <input type="date" name="dateFrom" required><br>
    Date To: <input type="date" name="dateTo" required><br>
    <input type="submit" value="Book Room">
</form>

<?php
}
?>

</body>
</html>
