CREATE OR REPLACE PROCEDURE KullaniciGuncelle(Kullanici_ID INT, Yeni_Isim VARCHAR, Yeni_Email VARCHAR, Yeni_Sifre VARCHAR, Yeni_Rol_ID INT)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Kullanici
    SET Isim = Yeni_Isim, Email = Yeni_Email, Sifre = Yeni_Sifre, Rol_ID = Yeni_Rol_ID
    WHERE Kullanici_ID = Kullanici_ID;
END;
$$;
