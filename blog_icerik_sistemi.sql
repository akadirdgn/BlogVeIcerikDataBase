-- INSERT INTO Rol (Rol_Adi) VALUES
-- ('Admin'),
-- ('Editor'),
-- ('Yazar'),
-- ('Moderatör'),
-- ('Kullanıcı');


-- INSERT INTO Kullanici (Isim, Email, Sifre, Rol_ID) VALUES
-- ('Ahmet Yılmaz', 'ahmet@example.com', '12345', 1),
-- ('Mehmet Demir', 'mehmet@example.com', '54321', 2),
-- ('Ayşe Kaya', 'ayse@example.com', 'ayse123', 3),
-- ('Fatma Çelik', 'fatma@example.com', 'celik456', 4),
-- ('Ali Güneş', 'ali@example.com', 'gunes789', 5);

-- INSERT INTO Kategori (Kategori_Adi) VALUES
-- ('Teknoloji'),
-- ('Bilim'),
-- ('Sanat'),
-- ('Eğitim'),
-- ('Spor');

-- INSERT INTO Etiket (Etiket_Adi) VALUES
-- ('Yapay Zeka'),
-- ('Python'),
-- ('SQL'),
-- ('Veritabanı'),
-- ('Makine Öğrenimi');

-- INSERT INTO Icerik (Baslik, Metin, Kullanici_ID, Kategori_ID, Etiket_ID) VALUES
-- ('Yapay Zeka Nedir?', 'Bu makale yapay zekayı ele alır.', 1, 1, 1),
-- ('Python ile Projeler', 'Python projelerine giriş.', 2, 2, 2),
-- ('SQL Veritabanları', 'SQL kullanımı hakkında bilgi.', 3, 3, 3),
-- ('Eğitimde Teknoloji', 'Teknolojinin eğitimdeki rolü.', 4, 4, 4),
-- ('Spor ve Teknoloji', 'Teknolojinin spordaki etkisi.', 5, 5, 5);

-- INSERT INTO Yorum (Kullanici_ID, Icerik_ID, Yorum_Metin) VALUES
-- (1, 1, 'Harika bir makale!'),
-- (2, 2, 'Çok faydalı bir yazı.'),
-- (3, 3, 'Bilgilendirici olmuş.'),
-- (4, 4, 'Teşekkürler!'),
-- (5, 5, 'Etkileyici bir içerik.');

-- INSERT INTO Cevap (Cevap_Metin, Kullanici_ID, Icerik_ID) VALUES
-- ('Katılıyorum.', 1, 1),
-- ('Ek olarak şunu da belirtmek isterim.', 2, 2),
-- ('Harika bir öneri!', 3, 3),
-- ('Ben de buna inanıyorum.', 4, 4),
-- ('Çok güzel bir cevap.', 5, 5);

-- INSERT INTO Icerik_Durumu (Durum_Adi, Icerik_ID) VALUES
-- ('Yayınlandı', 1),
-- ('Taslak', 2),
-- ('Yayınlandı', 3),
-- ('İnceleme Bekliyor', 4),
-- ('Silindi', 5);

-- INSERT INTO Takip (Kullanici_ID, Icerik_ID) VALUES
-- (1, 1),
-- (2, 2),
-- (3, 3),
-- (4, 4),
-- (5, 5);

-- INSERT INTO Icerik_Istatistik (Icerik_ID, Paylasim_Sayisi, Begeni_Sayisi, Goruntuleme_Sayisi) VALUES
-- (1, 10, 25, 100),
-- (2, 5, 15, 80),
-- (3, 8, 20, 90),
-- (4, 2, 10, 70),
-- (5, 7, 30, 110);

-- INSERT INTO Medya (Medya_URL, Medya_Turu, Icerik_ID) VALUES
-- ('http://example.com/img1.jpg', 'Görsel', 1),
-- ('http://example.com/img2.jpg', 'Görsel', 2),
-- ('http://example.com/video1.mp4', 'Video', 3),
-- ('http://example.com/img3.jpg', 'Görsel', 4),
-- ('http://example.com/video2.mp4', 'Video', 5);

-- INSERT INTO Anket (Anket_Sorusu, Kullanici_ID, Icerik_ID) VALUES
-- ('Yapay zeka geleceği nasıl etkiler?', 1, 1),
-- ('Python hangi alanlarda kullanılır?', 2, 2),
-- ('SQL mi NoSQL mi tercih edilmeli?', 3, 3),
-- ('Eğitimde teknolojinin etkisi nedir?', 4, 4),
-- ('Spor ve teknoloji ilişkisi nedir?', 5, 5);

-- INSERT INTO Anket_Cevaplari (Anket_ID, Cevap_Metin, Kullanici_ID) VALUES
-- (1, 'Olumlu etkiler.', 1),
-- (2, 'Web geliştirme.', 2),
-- (3, 'SQL daha iyi.', 3),
-- (4, 'Eğitimi destekler.', 4),
-- (5, 'Sporu modernize eder.', 5);

-- INSERT INTO Bildirim (Icerik_ID, Mesaj, Kullanici_ID) VALUES
-- (1, 'Yeni bir yorum yapıldı.', 1),
-- (2, 'İçeriğiniz onaylandı.', 2),
-- (3, 'İçeriğinizi takip eden biri var.', 3),
-- (4, 'Taslak kaydedildi.', 4),
-- (5, 'Bir kullanıcı beğeni bıraktı.', 5);

-- INSERT INTO Kullanici_Istatistik (Kullanici_ID, Makale_Sayisi, Begeni_Sayisi, Goruntuleme_Sayisi, Yorum_Sayisi) VALUES
-- (1, 5, 30, 150, 10),
-- (2, 4, 25, 120, 8),
-- (3, 3, 20, 100, 6),
-- (4, 2, 15, 90, 5),
-- (5, 1, 10, 80, 3);






