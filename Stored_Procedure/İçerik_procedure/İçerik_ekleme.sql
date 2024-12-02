CREATE OR REPLACE PROCEDURE IcerikEkle(Baslik VARCHAR, Metin TEXT, Kullanici_ID INT, Kategori_ID INT, Etiket_ID INT)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Icerik (Baslik, Metin, Kullanici_ID, Kategori_ID, Etiket_ID) 
    VALUES (Baslik, Metin, Kullanici_ID, Kategori_ID, Etiket_ID);
END;
$$;
