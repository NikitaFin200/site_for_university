<?php
require "connection_bd.php";
$sql = "SELECT Name_Programs, Img_Programs, Description_Programs, category_program.Id_category_program, target, Name_target, text_target FROM `programs` INNER JOIN `target` ON target.Id_target = programs.target INNER JOIN `category_program` ON target.Id_category_program = category_program.Id_category_program";
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