CREATE OR REPLACE PROCEDURE TumKategorileriListele()
LANGUAGE plpgsql
AS $$
BEGIN
    PERFORM * FROM Kategori;
END;
$$;
