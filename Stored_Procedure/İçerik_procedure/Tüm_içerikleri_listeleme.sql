CREATE OR REPLACE PROCEDURE TumIcerikleriListele()
LANGUAGE plpgsql
AS $$
BEGIN
    PERFORM * FROM Icerik;
END;
$$;
