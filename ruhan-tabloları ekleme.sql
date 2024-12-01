CREATE TABLE Rol (
    Rol_ID SERIAL PRIMARY KEY,
    Rol_Adi VARCHAR(255) NOT NULL
);

CREATE TABLE Kullanici (
    Kullanici_ID SERIAL PRIMARY KEY,
    Isim VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Sifre VARCHAR(255) NOT NULL,
    Rol_ID INT,
    FOREIGN KEY (Rol_ID) REFERENCES Rol(Rol_ID)
);
CREATE TABLE Kategori (
    Kategori_ID SERIAL PRIMARY KEY,
    Kategori_Adi VARCHAR(255) NOT NULL
);
CREATE TABLE Etiket (
    Etiket_ID SERIAL PRIMARY KEY,
    Etiket_Adi VARCHAR(255) NOT NULL
);

CREATE TABLE Icerik (
    Icerik_ID SERIAL PRIMARY KEY,
    Baslik VARCHAR(255) NOT NULL,
    Metin TEXT NOT NULL,
    Tarih TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Kullanici_ID INT,
    FOREIGN KEY (Kullanici_ID) REFERENCES Kullanici(Kullanici_ID),
    Kategori_ID INT,
	FOREIGN KEY (Kategori_ID) REFERENCES Kategori(Kategori_ID),
	Etiket_ID SERIAL,
	FOREIGN KEY (Etiket_ID) REFERENCES Etiket(Etiket_ID)
);





CREATE TABLE Yorum (
    Yorum_ID SERIAL PRIMARY KEY,
    Kullanici_ID INT,
    Icerik_ID INT,
    Yorum_Metin TEXT NOT NULL,
    Tarih TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Kullanici_ID) REFERENCES Kullanici(Kullanici_ID),
    FOREIGN KEY (Icerik_ID) REFERENCES Icerik(Icerik_ID)
);

CREATE TABLE Cevap (
    Cevap_ID SERIAL PRIMARY KEY,
    Cevap_Metin TEXT NOT NULL,
    Tarih TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Kullanici_ID INT,
    FOREIGN KEY (Kullanici_ID) REFERENCES Kullanici(Kullanici_ID),
    Icerik_ID INT,
    FOREIGN KEY (Icerik_ID) REFERENCES Icerik(Icerik_ID)
);

CREATE TABLE Icerik_Durumu (
    Durum_ID SERIAL PRIMARY KEY,
    Durum_Adi VARCHAR(255) NOT NULL,
    Icerik_ID INT,
    FOREIGN KEY (Icerik_ID) REFERENCES Icerik(Icerik_ID)
);

CREATE TABLE Takip (
    Takip_ID SERIAL PRIMARY KEY,
    Kullanici_ID INT,
    Icerik_ID INT,
    Takip_Tarihi TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Kullanici_ID) REFERENCES Kullanici(Kullanici_ID),
    FOREIGN KEY (Icerik_ID) REFERENCES Icerik(Icerik_ID)
);

CREATE TABLE Icerik_Istatistik (
    I_Istatistik_ID SERIAL PRIMARY KEY,
    Icerik_ID INT,
    Paylasim_Sayisi INT DEFAULT 0,
    Begeni_Sayisi INT DEFAULT 0,
    Goruntuleme_Sayisi INT DEFAULT 0,
    FOREIGN KEY (Icerik_ID) REFERENCES Icerik(Icerik_ID)
);

CREATE TABLE Medya (
    Medya_ID SERIAL PRIMARY KEY,
    Medya_URL VARCHAR(255) NOT NULL,
    Medya_Turu VARCHAR(50) NOT NULL,
    Icerik_ID INT,
    FOREIGN KEY (Icerik_ID) REFERENCES Icerik(Icerik_ID)
);

CREATE TABLE Anket (
    Anket_ID SERIAL PRIMARY KEY,
    Anket_Sorusu TEXT NOT NULL,
    Kullanici_ID INT,
    FOREIGN KEY (Kullanici_ID) REFERENCES Kullanici(Kullanici_ID),
    Icerik_ID INT,
    FOREIGN KEY (Icerik_ID) REFERENCES Icerik(Icerik_ID)
);

CREATE TABLE Anket_Cevaplari (
    Anket_Cevaplari_ID SERIAL PRIMARY KEY,
    Anket_ID INT,
    Cevap_Metin TEXT NOT NULL,
    Kullanici_ID INT,
    FOREIGN KEY (Anket_ID) REFERENCES Anket(Anket_ID),
    FOREIGN KEY (Kullanici_ID) REFERENCES Kullanici(Kullanici_ID)
);

CREATE TABLE Bildirim (
    Bildirim_ID SERIAL PRIMARY KEY,
    Icerik_ID INT,
    Tarih TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Mesaj TEXT NOT NULL,
    FOREIGN KEY (Icerik_ID) REFERENCES Icerik(Icerik_ID),
    Kullanici_ID INT,
    FOREIGN KEY (Kullanici_ID) REFERENCES Kullanici(Kullanici_ID)
);

CREATE TABLE Kullanici_Istatistik (
    K_Istatistik_ID SERIAL PRIMARY KEY,
    Kullanici_ID INT,
    Makale_Sayisi INT DEFAULT 0,
    Begeni_Sayisi INT DEFAULT 0,
    Goruntuleme_Sayisi INT DEFAULT 0,
    Yorum_Sayisi INT DEFAULT 0,
    FOREIGN KEY (Kullanici_ID) REFERENCES Kullanici(Kullanici_ID)
);
