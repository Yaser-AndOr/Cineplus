INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\1.jpg', SINGLE_BLOB) as T1),'Boleto de Fuga', 'A la fuga con una bolsa llena de dinero', 'Andrew Bard', 'Accion')
INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\2.jpg', SINGLE_BLOB) as T1),'Assassins Creed', 'Con tecnolog�a Cal vive aventuras de su antepasado', 'Justin Kurzel', 'Accion')
INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\3.jpg', SINGLE_BLOB) as T1),'La sirenita', 'Se fuga de casa', 'Ron Clements', 'Infantil')
INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\4.jpg', SINGLE_BLOB) as T1),'Blancanieves', 'Piel Blanca como la nieve', 'Andrew Bard', 'Accion')
INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\5.jpg', SINGLE_BLOB) as T1),'La bella y la bestia', 'Una chica enamora a una bestia', 'Kirk Wise', 'Infantil')
INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\6.jpg', SINGLE_BLOB) as T1),'Cenicienta', 'Torturada por sus hermanastras', 'Wilfred Jackson', 'Infantil')
INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\7.jpg', SINGLE_BLOB) as T1),'Rapidos y furiosos', 'A todo gas en autos molones', 'Rob Cohen', 'Accion')
INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\8.jpg', SINGLE_BLOB) as T1),'Peter Pan', 'Un sue�o inolvidable', 'Wilfred Jackson', 'Aventura')
INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\9.jpg', SINGLE_BLOB) as T1),'Iron Man', 'Redimir su vida en un traje', 'Jon Favreau', 'Accion')
INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\10.jpg', SINGLE_BLOB) as T1),'Iron Man 2', 'Forjando nuevas alianzas', 'Jon Favreau', 'Accion')
INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\11.jpg', SINGLE_BLOB) as T1),'Iron Man 3', 'La guerra contra el mandar�n', 'Shanne Black', 'Accion')
INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\12.jpg', SINGLE_BLOB) as T1),'Black Panther', 'Salvar un pais si rey', 'Ryan Coogler', 'Accion')
INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\13.jpg', SINGLE_BLOB) as T1),'Thor Ragnarok', 'La pelea contra Hella', 'Taika Waititi', 'Accion')
INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\14.jpg', SINGLE_BLOB) as T1),'Thor', 'Thor debe ganar el derecho al Mjolnir', 'Keneth Branagh', 'Accion')
INSERT INTO Cine..Pelicula values ((SELECT * FROM OPENROWSET(BULK N'C:\15.jpg', SINGLE_BLOB) as T1),'Guardianes de la Galaxia', 'Un nuevo equipo por conocer', 'James Gunn', 'Accion')