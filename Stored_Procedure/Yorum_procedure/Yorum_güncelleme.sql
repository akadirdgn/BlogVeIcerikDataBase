CREATE OR REPLACE PROCEDURE YorumGuncelle(Yorum_ID INT, Yeni_Yorum_Metin TEXT)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Yorum SET Yorum_Metin = Yeni_Yorum_Metin WHERE Yorum_ID = Yorum_ID;
END;
$$;
