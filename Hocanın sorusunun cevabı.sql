SELECT 
    kategori.kategori_adi AS "Kategori Adı", 
    kullanici.isim AS "Kullanıcı Adı", 
    icerik.baslik AS "İçerik Başlığı", 
    COUNT(icerik_takip.icerik_takip_id) AS "Takip Sayısı"
FROM 
    kategori
    JOIN icerik ON kategori.kategori_id = icerik.kategori_id
    JOIN kullanici ON icerik.kullanici_id = kullanici.kullanici_id
    JOIN icerik_takip ON icerik_takip.icerik_id = icerik.icerik_id
GROUP BY 
    kategori.kategori_adi, 
    kullanici.isim, 
    icerik.baslik
ORDER BY 
    kategori.kategori_adi;
