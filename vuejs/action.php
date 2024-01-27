<?php
//koneksi ke database dengan PDO
$connect = new PDO("mysql:host=localhost;dbname=latihan2", "root", "");
$received_data = json_decode(file_get_contents("php://input"));
//membuat variabel data
//variabel ini akan digunakan untuk menampung data dari database nantinya
$data = array();
//script untuk menampilkan semua data
if ($received_data->action == 'fetchall') {
    //perintah untuk mengambil data dari database
    $query = "SELECT * FROM tbl_sample ORDER BY id DESC";
    $statement = $connect->prepare($query);
    $statement->execute();
    //melakukan perulangan dan memasukan tiap data ke dalam variabel data
    while ($row = $statement->fetch(PDO::FETCH_ASSOC)) {
        $data[] = $row;
    }
    //menampilkan data dalam bentuk json
    echo json_encode($data);
}

if ($received_data->action == 'insert') {
    $data = array(
        ':first_name' => $received_data->first_name,
        ':upload_image' => $received_data->upload_image
    );
    $query = "INSERT INTO tbl_sample (first_name, upload_image) VALUES (:first_name, :upload_image)";
    $statement = $connect->prepare($query);
    $statement->execute($data);
}

if ($received_data->action == 'update') {
    $data = array(
        ':first_name' => $received_data->first_name,
        ':upload_image' => $received_data->upload_image,
        ':id' => $received_data->id
    );
    $query = "UPDATE tbl_sample SET first_name = :first_name, upload_image = :upload_image WHERE id = :id";
    $statement = $connect->prepare($query);
    $statement->execute($data);
}

if ($received_data->action == 'delete') {
    $data = array(
        ':id' => $received_data->id
    );
    $query = "DELETE FROM tbl_sample WHERE id = :id";
    $statement = $connect->prepare($query);
    $statement->execute($data);
}
?>
