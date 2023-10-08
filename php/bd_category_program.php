<?php
require "connection_bd.php";
$sql = "SELECT category_program.Id_category_program, Name_target, text_target, Id_target FROM `target` INNER JOIN `category_program` ON target.Id_category_program = category_program.Id_category_program;";
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