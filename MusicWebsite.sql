CREATE TABLE Genre (
	genre_id INTEGER PRIMARY KEY,
	name VARCHAR(60) NOT null
	);
CREATE TABLE Performer (
	performer_id INTEGER PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	genre VARCHAR(60) NOT NULL
	);
CREATE TABLE Album (
	album_id INTEGER PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	yaer INTEGER NOT NULL
	);
CREATE TABLE Track (
	track_id INTEGER PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	duration TIME NOT NULL,
	album_id INTEGER,
	FOREIGN KEY (album_id) REFERENCES Album(album_id)
	);
CREATE TABLE Compilation (
	compilation_id INTEGER PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	yaer INTEGER NOT NULL,
	track VARCHAR (60) NOT NULL
	);
CREATE TABLE Performer_Genre (
	performer_id INT, 
    genre_id INT, 
	PRIMARY KEY (performer_id, genre_id), 
	FOREIGN KEY (performer_id) REFERENCES performer(performer_id), 
	FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
	);

CREATE TABLE Album_Performer (
    album_id INT,
    performer_id INT,
    PRIMARY KEY (album_id, performer_id),
    FOREIGN KEY (album_id) REFERENCES album(album_id),
    FOREIGN KEY (performer_id) REFERENCES performer(performer_id)
);

CREATE TABLE Compilation_Track (
    compilation_id INT,
    track_id INT,
    PRIMARY KEY (compilation_id, track_id),
    FOREIGN KEY (compilation_id) REFERENCES compilation(compilation_id),
    FOREIGN KEY (track_id) REFERENCES track(track_id)
);