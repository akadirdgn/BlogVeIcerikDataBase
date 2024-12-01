INSERT INTO Rol (Rol_Adi) VALUES
 ('Analist'),
 ('Çevirmen'),
 ('Danışman'),
 ('Destek'),
 ('Proje Yöneticisi');


INSERT INTO Kullanici (Isim, Email, Sifre, Rol_ID) VALUES
 ('Can Özdemir', 'can@example.com', 'can123', 6),
 ('Zehra Erdem', 'zehra@example.com', 'erdem456', 7),
 ('Hakan Şen', 'hakan@example.com', 'sen789', 8),
 ('Elif Aydın', 'elif@example.com', 'aydin321', 9),
 ('Mert Kaya', 'mert@example.com', 'kaya654', 10);


INSERT INTO Kategori (Kategori_Adi) VALUES
 ('Sağlık'),
 ('Ekonomi'),
 ('Tarih'),
 ('Gezi'),
 ('Kültür');


 INSERT INTO Etiket (Etiket_Adi) VALUES
 ('Veri Analizi'),
 ('Blockchain'),
 ('Tasarım'),
 ('Yazılım Testi'),
 ('Web Geliştirme');


INSERT INTO Icerik (Baslik, Metin, Kullanici_ID, Kategori_ID, Etiket_ID) VALUES
 ('Blockchain Teknolojisi', 'Blockchain nedir ve nasıl çalışır?', 6, 6, 6),
 ('Sağlıklı Yaşam İpuçları', 'Sağlıklı bir yaşam için öneriler.', 7, 7, 7),
 ('Tarih ve Kültür', 'Tarihin kültür üzerindeki etkisi.', 8, 8, 8),
 ('Gezi Rehberi', 'Popüler gezi rotaları.', 9, 9, 9),
 ('Yazılım Testi', 'Yazılım testinin önemi.', 10, 10, 10);


 INSERT INTO Yorum (Kullanici_ID, Icerik_ID, Yorum_Metin) VALUES
 (6, 6, 'Çok detaylı bir makale.'),
 (7, 7, 'Teşekkürler, faydalı bilgiler.'),
 (8, 8, 'Kültür hakkında farklı bir bakış açısı.'),
 (9, 9, 'Rehber çok işime yaradı.'),
 (10, 10, 'Test konusunu çok güzel ele almışsınız.');


 INSERT INTO Cevap (Cevap_Metin, Kullanici_ID, Icerik_ID) VALUES
 ('Kesinlikle katılıyorum.', 6, 6),
 ('Ek bilgiler için teşekkürler.', 7, 7),
 ('Görüşlerinize tamamen katılıyorum.', 8, 8),
 ('Bu konuda ek bir kaynak öneririm.', 9, 9),
 ('Test süreçleri hakkında daha fazla bilgi bekliyorum.', 10, 10);


 INSERT INTO Icerik_Durumu (Durum_Adi, Icerik_ID) VALUES
 ('Yayınlandı', 6),
 ('Taslak', 7),
 ('Yayınlandı', 8),
 ('İnceleme Bekliyor', 9),
 ('Silindi', 10);


 INSERT INTO Takip (Kullanici_ID, Icerik_ID) VALUES
 (6, 6),
 (7, 7),
 (8, 8),
 (9, 9),
 (10, 10);


INSERT INTO Icerik_Istatistik (Icerik_ID, Paylasim_Sayisi, Begeni_Sayisi, Goruntuleme_Sayisi) VALUES
 (6, 12, 35, 150),
 (7, 8, 22, 130),
 (8, 15, 40, 200),
 (9, 5, 18, 90),
 (10, 10, 25, 120);


 INSERT INTO Medya (Medya_URL, Medya_Turu, Icerik_ID) VALUES
 ('http://example.com/img6.jpg', 'Görsel', 6),
 ('http://example.com/img7.jpg', 'Görsel', 7),
 ('http://example.com/video3.mp4', 'Video', 8),
 ('http://example.com/img8.jpg', 'Görsel', 9),
 ('http://example.com/video4.mp4', 'Video', 10);


INSERT INTO Anket (Anket_Sorusu, Kullanici_ID, Icerik_ID) VALUES
 ('Blockchain gelecekte nasıl şekillenir?', 6, 6),
 ('Sağlık alanındaki yeni teknolojiler nelerdir?', 7, 7),
 ('Tarihin toplum üzerindeki etkileri nelerdir?', 8, 8),
 ('Gezi rotalarını nasıl planlıyorsunuz?', 9, 9),
 ('Yazılım testi süreçleri nasıl optimize edilir?', 10, 10);


INSERT INTO Anket_Cevaplari (Anket_ID, Cevap_Metin, Kullanici_ID) VALUES
 (6, 'Yapay zekaya etkisi büyük olabilir.', 6),
 (7, 'Yeni cihazlar daha etkili olabilir.', 7),
 (8, 'Tarihsel veriler toplumu şekillendiriyor.', 8),
 (9, 'Planlama aşaması oldukça önemli.', 9),
 (10, 'Test araçları çok faydalı.', 10);


INSERT INTO Bildirim (Icerik_ID, Mesaj, Kullanici_ID) VALUES
 (6, 'Yeni bir yorum yapıldı.', 6),
 (7, 'İçeriğiniz onaylandı.', 7),
 (8, 'İçeriğinizi takip eden biri var.', 8),
 (9, 'Taslak kaydedildi.', 9),
 (10, 'Bir kullanıcı beğeni bıraktı.', 10);


 INSERT INTO Kullanici_Istatistik (Kullanici_ID, Makale_Sayisi, Begeni_Sayisi, Goruntuleme_Sayisi, Yorum_Sayisi) VALUES
 (6, 6, 40, 200, 15),
 (7, 5, 30, 180, 12),
 (8, 4, 25, 160, 10),
 (9, 3, 20, 140, 8),
 (10, 2, 15, 100, 5);
