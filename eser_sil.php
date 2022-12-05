<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    /* Silme işlemi sorgusu */
    $silinecek = mysqli_real_escape_string($baglanti, $_GET["eserID"]);
    $sorgu = "DELETE FROM eserler WHERE eserID = $silinecek";

    if (mysqli_query($baglanti, $sorgu)) {
        mysqli_close($baglanti);
        if (!headers_sent()) {
            header("Location: eser_islemleri.php");
            exit;
        }
    } else {
        $islemSonuc = "Kayıt silinirken bir hata oluştu: " . mysqli_error($baglanti);
    }
?>