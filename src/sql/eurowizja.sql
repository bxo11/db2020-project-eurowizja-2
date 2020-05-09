DROP SCHEMA

IF EXISTS eurowizja;
	CREATE SCHEMA eurowizja COLLATE = utf8_general_ci;

USE eurowizja;

create table countries
(
    ID_country int auto_increment
        primary key,
    Name       varchar(20) charset utf8 not null
)
    charset = latin1;

create table points
(
    ID_points int auto_increment
        primary key,
    Score     int not null
)
    charset = latin1;

create table songs
(
    ID_song int auto_increment
        primary key,
    Name    varchar(20) charset utf8 not null,
    Gendre  varchar(20) charset utf8 not null
)
    charset = latin1;

create table artists
(
    ID_artist  int auto_increment
        primary key,
    Name       varchar(20) charset utf8 not null,
    ID_country int                      not null,
    ID_points  int                      not null,
    ID_song    int                      not null,
    constraint Artist_ibfk_1
        foreign key (ID_country) references countries (ID_country),
    constraint Artist_ibfk_2
        foreign key (ID_points) references points (ID_points),
    constraint Artist_ibfk_3
        foreign key (ID_song) references songs (ID_song)
)
    charset = latin1;

create table people
(
    ID_people int auto_increment
        primary key,
    Name      varchar(20) charset utf8 not null,
    Surname   varchar(20) charset utf8 not null,
    ID_artist int                      not null,
    constraint People_ibfk_1
        foreign key (ID_artist) references artists (ID_artist)
)
    charset = latin1;


   

INSERT INTO eurowizja.countries (ID_country, Name) VALUES (1, 'Malta');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (2, 'Albania');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (3, 'Czechy');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (4, 'Niemcy');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (5, 'Rosja');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (6, 'Dania');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (7, 'San Marino');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (8, 'Macedonia Północna');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (9, 'Szwecja');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (10, 'Słowienia');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (11, 'Cypr');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (12, 'Holandia');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (13, 'Grecja');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (14, 'Izrael');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (15, 'Norwegia');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (16, 'Wielka Brytania');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (17, 'Islandia');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (18, 'Estonia');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (19, 'Białoruś');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (20, 'Azerbejdżan');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (21, 'Francja');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (22, 'Włochy');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (23, 'Serbia');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (24, 'Szwajcaria');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (25, 'Australia');
INSERT INTO eurowizja.countries (ID_country, Name) VALUES (26, 'Hiszpania');


INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (1, 'Chameleon', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (2, 'Ktheju tokës', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (3, 'Friend of a Friend', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (4, 'Sister', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (5, 'Scream', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (6, 'Love Is Forever', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (7, 'Say Na Na Na', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (8, 'Proud', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (9, 'Too Late for Love', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (10, 'Sebi', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (11, 'Replay', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (12, 'Arcade', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (13, 'Better Love', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (14, 'Home', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (15, 'Spirit in the Sky', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (16, 'Bigger than Us', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (17, 'Hatrið mun sigra', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (18, 'Storm', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (19, 'Like It', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (20, 'Truth', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (21, 'Roi', 'Roi');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (22, 'Soldi', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (23, 'Kruna', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (24, 'She Got Me', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (25, 'Zero Gravity', 'Pop');
INSERT INTO eurowizja.songs (ID_song, Name, Gendre) VALUES (26, 'La venda', 'Pop');

INSERT INTO eurowizja.points (ID_points, Score) VALUES (1, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (2, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (3, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (4, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (5, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (6, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (7, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (8, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (9, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (10, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (11, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (12, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (13, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (14, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (15, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (16, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (17, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (18, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (19, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (20, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (21, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (22, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (23, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (24, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (25, 0);
INSERT INTO eurowizja.points (ID_points, Score) VALUES (26, 0);

INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (1, 'Michela Pace', 1, 1, 1);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (2, 'Jonida Maliqi', 2, 2, 2);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (3, 'Lake Malawi', 3, 3, 3);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (4, 'S!sters', 4, 4, 4);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (5, 'Siergiej Łazariew', 5, 5, 5);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (6, 'Leonora', 6, 6, 6);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (7, 'Serhat', 7, 7, 7);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (8, 'Tamara Todewska', 8, 8, 8);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (9, 'John Lundvik', 9, 9, 9);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (10, 'Zala Kralj & Gašper', 10, 10, 10);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (11, 'Tamta', 11, 11, 11);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (12, 'Duncan Laurence', 12, 12, 12);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (13, 'Katerine Duska', 13, 13, 13);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (14, 'Kobi Marimi', 14, 14, 14);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (15, 'KEiiNO', 15, 15, 15);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (16, 'Michael Rice', 16, 16, 16);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (17, 'Hatari', 17, 17, 17);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (18, 'Victor Crone', 18, 18, 18);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (19, 'Zena', 19, 19, 19);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (20, 'Chingiz', 20, 20, 20);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (21, 'Bilal Hassani', 21, 21, 21);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (22, 'Mahmood', 22, 22, 22);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (23, 'Nevena Božović', 23, 23, 23);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (24, 'Luca Hänni', 24, 24, 24);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (25, 'Kate Miller-Heidke', 25, 25, 25);
INSERT INTO eurowizja.artists (ID_artist, Name, ID_country, ID_points, ID_song) VALUES (26, 'Miki', 26, 26, 26);

INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (1, 'Michela', 'Pace', 1);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (2, 'Jonida', 'Maliqi', 2);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (3, 'Lake', 'Malawi', 3);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (4, 'Laurita', 'Spinelli', 4);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (5, 'Carlotta', 'Truman', 4);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (6, 'Siergiej', 'Łazariew', 5);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (7, 'Leonora', 'Jepsen', 6);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (8, 'Ahmet', 'Hacıpaşalıoğlu', 7);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (9, 'Tamara', 'Todewska', 8);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (10, 'John', 'Lundvik', 9);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (11, 'Zala', 'Kralj', 10);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (12, 'Gašper', 'Šantl', 10);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (13, 'Tamta', 'Goduadze', 11);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (14, 'Duncan', 'Laurence', 12);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (15, 'Katerine', 'Duska', 13);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (16, 'Kobi', 'Marimi', 14);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (17, 'Tom', 'Hugo', 15);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (18, 'Fred', 'Buljo', 15);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (19, 'Alexandra', 'Rotan', 15);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (20, 'Michael', 'Rice', 16);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (21, 'Klemens', 'Hannigan', 17);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (22, 'Matthias', 'Haraldsson', 17);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (23, 'Einar', 'Stefánsson', 17);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (24, 'Victor', 'Crone', 18);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (25, 'Zinaida', 'Kuprianowicz ', 19);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (26, 'Chingiz', 'Mustafayev', 20);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (27, 'Chingiz', 'Mustafayev', 20);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (28, 'Bilal', 'Hassani', 21);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (29, 'Alessandro', 'Mahmoud', 22);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (30, 'Nevena', 'Božović', 23);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (31, 'Luca', 'Hänni', 24);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (32, 'Kate', 'Miller-Heidke', 25);
INSERT INTO eurowizja.people (ID_people, Name, Surname, ID_artist) VALUES (33, 'Miguel', 'Pozo', 26);