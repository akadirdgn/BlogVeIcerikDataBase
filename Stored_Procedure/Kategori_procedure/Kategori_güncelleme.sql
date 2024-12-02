CREATE OR REPLACE PROCEDURE KategoriGuncelle(Kategori_ID INT, Yeni_Kategori_Adi VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Kategori SET Kategori_Adi = Yeni_Kategori_Adi WHERE Kategori_ID = Kategori_ID;
END;
$$;
