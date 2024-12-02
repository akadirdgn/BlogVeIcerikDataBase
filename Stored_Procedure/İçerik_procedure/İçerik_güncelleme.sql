CREATE OR REPLACE PROCEDURE IcerikGuncelle(Icerik_ID INT, Yeni_Baslik VARCHAR, Yeni_Metin TEXT)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Icerik 
    SET Baslik = Yeni_Baslik, Metin = Yeni_Metin 
    WHERE Icerik_ID = Icerik_ID;
END;
$$;
