CREATE OR REPLACE PROCEDURE RolEkle(Rol_Adi VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Rol (Rol_Adi) VALUES (Rol_Adi);
END;
$$;
