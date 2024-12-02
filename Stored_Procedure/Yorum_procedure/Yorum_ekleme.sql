CREATE OR REPLACE PROCEDURE YorumEkle(Kullanici_ID INT, Icerik_ID INT, Yorum_Metin TEXT)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Yorum (Kullanici_ID, Icerik_ID, Yorum_Metin) 
    VALUES (Kullanici_ID, Icerik_ID, Yorum_Metin);
END;
$$;
