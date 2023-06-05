
# Название и продолжительность самого длительного трека.
SELECT track_name, MAX(duration_track) d FROM track
GROUP BY track_name
ORDER BY d desc 
LIMIT 1;

# Название треков, продолжительность которых не менее 3,5 минут.
SELECT track_name, duration_track FROM track 
	WHERE duration_track >= 210
GROUP BY track_name, duration_track
ORDER BY track_name DESC;

# Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name_collection FROM collection_list
	WHERE realise_collection >= 2018 AND realise_collection <= 2020
GROUP BY name_collection;

# Исполнители, чьё имя состоит из одного слова.
SELECT nickname FROM performer_list pl
	WHERE NOT nickname LIKE '% %';

# Название треков, которые содержат слово «мой» или «my».
SELECT track_name FROM track
	WHERE track_name iLIKE '%мой%' OR track_name iLIKE '%my%';

# Количество исполнителей в каждом жанре.
SELECT g.genre_name, COUNT(pl.nickname) FROM genre AS g
	LEFT JOIN performer_genre AS pg ON g.id = pg.genre_id 
	LEFT JOIN performer_list AS pl ON pg.performer_id = pl.id 
GROUP BY g.genre_name
ORDER BY COUNT(pl.nickname);

# Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT DISTINCT t.track_name, a.album_realise FROM album a 
 	JOIN track t ON t.album_track = a.id 
	WHERE a.album_realise >= 2018 AND a.album_realise <= 2020
ORDER BY a.album_realise;

# Средняя продолжительность треков по каждому альбому.
SELECT a.album_name , AVG(t.duration_track) FROM album a
	JOIN track t ON t.album_track = a.id 
GROUP BY a.album_name
ORDER BY AVG(t.duration_track);

# Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT pl.nickname, a.album_realise  FROM album a 
	JOIN performer_album pa ON a.id = pa.album_id
	JOIN performer_list pl ON pa.performer_id = pl.id
	WHERE a.album_realise != 2020
ORDER BY a.album_realise;

# Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT cl.name_collection FROM collection_list cl
	LEFT JOIN collection_track ct ON cl.id = ct.collection_id
	LEFT JOIN track t ON t.id = ct.track_id
	LEFT JOIN album a ON a.id = t.album_track 
	LEFT JOIN performer_album pa ON pa.album_id = a.id 
	LEFT JOIN performer_list pl ON pl.id = pa.performer_id 
	WHERE pl.nickname iLIKE '%Queen%'
ORDER BY cl.name_collection;