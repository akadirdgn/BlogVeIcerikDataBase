CREATE OR REPLACE PROCEDURE KategoriEkle(Kategori_Adi VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Kategori (Kategori_Adi) VALUES (Kategori_Adi);
END;
$$;
