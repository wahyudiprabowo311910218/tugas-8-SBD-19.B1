<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "akademik";
$conn = mysqli_connect($host, $user, $pass, $db);
if ($conn == false)
{
echo "Koneksi ke server gagal.";
die();
} #else echo "Koneksi berhasil";
?>