<?php
require "connection_bd.php";

$sql = "SELECT News_header, News_mini_text FROM news";
$result = $conn->query($sql);

$data = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

}

$conn->close();

echo json_encode($data);
?>