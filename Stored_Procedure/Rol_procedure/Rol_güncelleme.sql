CREATE OR REPLACE PROCEDURE RolGuncelle(Rol_ID INT, Yeni_Rol_Adi VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Rol SET Rol_Adi = Yeni_Rol_Adi WHERE Rol_ID = Rol_ID;
END;
$$;
