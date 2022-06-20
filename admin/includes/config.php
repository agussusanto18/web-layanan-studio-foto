<?php
# Konek ke Web Server Lokal
$myHost	= "localhost";
$myUser	= "otnasussuga_admin";
$myPass	= "otnasus180800";
$myDbs	= "otnasussuga_jasaphoto";

$pagedesc = "Sistem Informasi Penyediaan Jasa Fotografi Berbasis Web";
$koneksidb = mysqli_connect( $myHost, $myUser, $myPass, $myDbs);
if (! $koneksidb) {
  echo "Failed Connection !";
}

?>