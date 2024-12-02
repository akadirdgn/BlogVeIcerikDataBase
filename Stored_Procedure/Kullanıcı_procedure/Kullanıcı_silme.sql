CREATE OR REPLACE PROCEDURE KullaniciSil(Kullanici_ID INT)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM Kullanici WHERE Kullanici_ID = Kullanici_ID;
END;
$$;
