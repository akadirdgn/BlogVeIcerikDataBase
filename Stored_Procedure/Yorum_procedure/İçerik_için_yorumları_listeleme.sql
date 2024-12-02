CREATE OR REPLACE PROCEDURE YorumlariListele(Icerik_ID INT)
LANGUAGE plpgsql
AS $$
BEGIN
    PERFORM * FROM Yorum WHERE Icerik_ID = Icerik_ID;
END;
$$;
