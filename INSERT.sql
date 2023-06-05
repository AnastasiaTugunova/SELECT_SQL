
INSERT INTO genre (genre_name)
VALUES 
	('Punk'),
	('Rock'),
	('Metall'),
	('Alternative');

INSERT INTO performer_list (nickname)
VALUES
	('Король и Шут'),
	('Queen'),
	('Oliver Tree'),
	('Korn'),
	('Rammstein'),
	('Fall Out Boy');

INSERT INTO performer_genre (performer_id, genre_id)
VALUES 
	(1,1),
	(2,2),
	(3,4),
	(4,3),
	(5,3),
	(6,4);

INSERT INTO album (album_name, album_realise)
VALUES
	('Акустический альбом',1999),
	('Ели мясо мужики', 1999),
	('Театр демона', 2010),
	('Продавец кошмаров', 2006),
	('News of the World The Works', 1984),
	('Ugly Is Beautiful', 2020),
	('Se You One The Other Side', 2005),
	('Mutter', 2001),
	('Believeres Never Die', 2019);

INSERT INTO performer_album (performer_id, album_id)
VALUES 
	(1,1),
	(1,2),
	(1,3),
	(1,4),
	(2,5),
	(3,6),
	(4,7),
	(5,8),
	(6,9);

INSERT INTO track (track_name, duration_track, album_track)
VALUES
	('Кукла колдуна', 203, 1),
	('Прыгну со скалы', 192, 2),
	('Ели мясо мужики', 160, 2),
	('Танец злобного гения', 236, 3),
	('Ром', 161, 4),
	('We Will Rock You', 121, 5),
	('I Want To Break Free', 225, 5),
	('Bohemian Rapsody', 355, 5),
	('Lies Came Out My Mouth', 150, 6),
	('I"m Gone', 185, 6),
	('Again & Again', 174, 6),
	('Coming Undone', 199, 7),
	('Twisted Transistor', 259, 7),
	('For No One', 217, 7),
	('Sonne', 272, 8),
	('My song Knows What You Did In The Dark', 186, 9),
	('Conturies', 228, 9),
	('The Phoenix', 244, 9);
	
INSERT INTO collection_list (name_collection, realise_collection)
VALUES
	('Коллекция №1', 2022),
	('Коллекция №2', 2018),
	('Коллекция №3', 2013),
	('Коллекция №4', 2020);
	
INSERT INTO collection_track (collection_id, track_id)
VALUES
	(1, 9),
	(1, 8),
	(1, 7),
	(1, 3),
	(1, 6),
	(1, 5),
	(1, 15),
	(1, 18),
	(1, 17),
	(2, 5),
	(2, 15),
	(2, 13),
	(2, 10),
	(2, 14),
	(2, 12),
	(3, 1),
	(3, 2),
	(3, 3),
	(3, 4),
	(3, 5),
	(3, 6),
	(3, 7),
	(4, 4),
	(4, 18),
	(4, 16),
	(4, 17),
	(4, 1),
	(4, 7),
	(4, 17),
	(4, 11);