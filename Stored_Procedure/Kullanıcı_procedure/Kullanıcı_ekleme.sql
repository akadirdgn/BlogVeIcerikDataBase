CREATE OR REPLACE PROCEDURE KullaniciEkle(Isim VARCHAR, Email VARCHAR, Sifre VARCHAR, Rol_ID INT)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Kullanici (Isim, Email, Sifre, Rol_ID) VALUES (Isim, Email, Sifre, Rol_ID);
END;
$$;
