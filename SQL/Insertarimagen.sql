INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\img.jpg', SINGLE_BLOB) as T1),'las flipantes aventuras de el rubio volador y suss', 'las flipantes aventuras de el rubio volador y suss', 'las flipantes aventuras de el rubio volador y suss', 'las flipantes aventuras de el rubio volador y suss')