<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="utf-8">
   <link rel="stylesheet" type="text/css" href="style.css">
   <title>Tugas_Basis_Data_8</title>
</head>
<body>
   <div class="container">
      <center><h1>Sistem Akademik</h1></center>
      <div class="main">
         <?php
         include("koneksi.php");
         // query untuk menampilkan data
         $sql = 'SELECT * FROM mahasiswa';
         $result = mysqli_query($conn, $sql);
         ?>
         <h3>Tabel Mahasiswa</h3>
         <table>
          <tr>
            <th>Nim</th>
            <th>Nama_Mhs</th>
            <th>Tgl_Lahir</th>
            <th>Alamat</th>
            <th>Jenis_Kelamin</th>
         </tr>
            <?php if($result): ?>
            <?php while($row = mysqli_fetch_array($result)): ?>
            <tr>
               <td><?= $row['Nim'];?></td>
               <td><?= $row['Nama_Mhs'];?></td>
               <td><?= $row['Tgl_Lahir'];?></td>
               <td><?= $row['Alamat'];?></td>
               <td><?= $row['Jenis_Kelamin'];?></td>
            </tr>             
            <?php endwhile; else: ?>
            <tr>
            <td colspan="7">Belum ada data</td>
            </tr>
            <?php endif; ?>
         </table>
         <?php
         include("koneksi.php");
         // query untuk menampilkan data
         $sql2 = 'SELECT * FROM matakuliah';
         $result = mysqli_query($conn, $sql2);
         ?>
         <h3>Tabel Matakuliah</h3>
         <table>
          <tr>
            <th>Kode_MK</th>
            <th>Nama_MK</th>
            <th>Sks</th>
         </tr>
            <?php if($result): ?>
            <?php while($row = mysqli_fetch_array($result)): ?>
            <tr>
               <td><?= $row['Kode_MK'];?></td>
               <td><?= $row['Nama_MK'];?></td>
               <td><?= $row['Sks'];?></td>
            </tr>             
            <?php endwhile; else: ?>
            <tr>
            <td colspan="7">Belum ada data</td>
            </tr>
            <?php endif; ?>
         </table>
         <?php
         include("koneksi.php");
         // query untuk menampilkan data
         $sql3 = 'SELECT * FROM perkuliahan';
         $result = mysqli_query($conn, $sql3);
         ?>
         <h3>Tabel Perkuliahan</h3>
         <table>
          <tr>
            <th>Nim</th>
            <th>Kode_MK</th>
            <th>Nip</th>
            <th>Nilai</th>
         </tr>
            <?php if($result): ?>
            <?php while($row = mysqli_fetch_array($result)): ?>
            <tr>
               <td><?= $row['Nim'];?></td>
               <td><?= $row['Kode_MK'];?></td>
               <td><?= $row['Nip'];?></td>
               <td><?= $row['Nilai'];?></td>
            </tr>             
            <?php endwhile; else: ?>
            <tr>
            <td colspan="7">Belum ada data</td>
            </tr>
            <?php endif; ?>
      </div>
   </div>
</body>
</html>