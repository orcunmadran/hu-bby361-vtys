<?php
/* Bağlantı bilgilerinin alınması*/
require_once("baglanti.php");

/* Ekleme işlemi sorgusu */
$eserAdi = mysqli_real_escape_string($baglanti, $_POST['eserAdi']);
$eserDetay = mysqli_real_escape_string($baglanti, $_POST['eserDetay']);
$eserURL = mysqli_real_escape_string($baglanti, $_POST['eserURL']);
$sorgu = "INSERT INTO yazar (eserAdi, eserDetay, eserURL)
            VALUES ('$eserAdi', '$eserAdi', '$eserURL')";

if (mysqli_query($baglanti, $sorgu)) {
    $islemSonuc = "Yeni kayıt Başarıyla Oluşturuldu.";
} else {
    $islemSonuc = "Hata: " . $sorgu . "<br>" . mysqli_error($baglanti);
}

$sorgu2 = mysqli_query($baglanti, "SELECT * FROM eserler ORDER BY eserID DESC");

mysqli_close($baglanti);

?>