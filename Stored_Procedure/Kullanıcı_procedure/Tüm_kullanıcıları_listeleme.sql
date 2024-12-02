CREATE OR REPLACE PROCEDURE TumKullanicilariListele()
LANGUAGE plpgsql
AS $$
BEGIN
    PERFORM * FROM Kullanici;
END;
$$;
