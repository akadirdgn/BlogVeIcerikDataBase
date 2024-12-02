CREATE OR REPLACE PROCEDURE KategoriSil(Kategori_ID INT)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM Kategori WHERE Kategori_ID = Kategori_ID;
END;
$$;
