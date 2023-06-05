
CREATE TABLE IF NOT EXISTS genre(
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS performer_list (
	id SERIAL PRIMARY KEY,
	nickname VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS performer_genre(
	id SERIAL PRIMARY KEY,
	performer_id INTEGER  NOT NULL REFERENCES performer_list(id),
	genre_id INTEGER NOT NULL REFERENCES genre(id)

);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	album_name VARCHAR(30),
	album_realise INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS performer_album (
	performer_id INTEGER NOT NULL REFERENCES performer_list(id),
	album_id INTEGER NOT NULL REFERENCES album (id)
);


CREATE TABLE IF NOT EXISTS track (
	id SERIAL PRIMARY KEY,
	track_name VARCHAR(20) NOT NULL,
	duration_track INTEGER NOT NULL,
	album_track INTEGER NOT NULL REFERENCES album (id)
);

CREATE TABLE IF NOT EXISTS collection_list (
	id SERIAL PRIMARY KEY,
	name_collection VARCHAR(15) NOT NULL,
	realise_collection INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS collection_track (
	collection_id INTEGER NOT NULL REFERENCES collection_list (id),
	track_id INTEGER NOT NULL REFERENCES track (id)
);