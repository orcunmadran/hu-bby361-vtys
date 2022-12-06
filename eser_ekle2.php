<?php
/* Bağlantı bilgilerinin alınması*/
require_once("baglanti.php");

/* Ekleme işlemi sorgusu */
$eserAdi = mysqli_real_escape_string($baglanti, $_POST['eserAdi']);
$eserDetay = mysqli_real_escape_string($baglanti, $_POST['eserDetay']);
$eserURL = mysqli_real_escape_string($baglanti, $_POST['eserURL']);
$yazarID = mysqli_real_escape_string($baglanti, $_POST['yazarID']);
$sorgu = "INSERT INTO eserler (eserAdi, eserDetay, eserURL, yazarID)
            VALUES ('$eserAdi', '$eserDetay', '$eserURL', $yazarID)";

if (mysqli_query($baglanti, $sorgu)) {
    mysqli_close($baglanti);
    if (!headers_sent()) {
        header("Location: eserleri_listele.php");
        exit;
    }
} else {
    printf("Hata: " . $sorgu . "<br>" . mysqli_error($baglanti));
}
?>