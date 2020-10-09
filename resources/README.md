

# Eurowizja.

| Nazwisko i imię | Wydział | Kierunek | Semestr | Grupa | Rok akademicki |
| :-------------: | :-----: | :------: | :-----: | :---: | :------------: |
| Krzysztof Jarek         | WIMiIP  | IS       |   4     | 3     | 2019/2020      |
| Krzysztof Klimczyk        | WIMiIP  | IS       |   4     | 3     | 2019/2020      |

## Projekt bazy danych
![enter image description here](https://github.com/KrzysiekJa/db2020-project-eurowizja-2/blob/master/resources/eurowizja%20-%20diagram.png)

**1. Tabela *countries*:**

    create table countries:
    (  
      ID_country int auto_increment primary key,
      Name       varchar(20) charset utf8 not null  
    )

**2. Tabela *points*:**

    create table points:
    (  
      ID_points int auto_increment primary key,
      Score     int not null  
    )

            
**3. Tabela *songs*:**

    create table songs  
    (  
      ID_song int auto_increment  primary key,
      Name    varchar(20) charset utf8 not null,  
      Gendre  varchar(20) charset utf8 not null  
    )

**4. Tabela *artists*:** 
  

    create table artists  
    (  
      ID_artist  int auto_increment primary key, 
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

**5. Tabela *people*:**

    create table people  
    (  
      ID_people int auto_increment primary key, 
      Name      varchar(20) charset utf8 not null,  
      Surname   varchar(20) charset utf8 not null,  
      ID_artist int                      not null,  
     constraint People_ibfk_1  
            foreign key (ID_artist) references artists (ID_artist)  
    )


## Implementacja zapytań SQL

**1. Wyświetlenie zwycięscy wraz z danymi:**

    SELECT artists.Name 
    FROM (points INNER JOIN artists ON artists.ID_points = points.ID_points)
    ORDER BY points.Score DESC limit 1;

**2. Wyświetlenie zwycięskiej trójki:**

    SELECT artists.Name, points.Score
    FROM (points INNER JOIN artists ON artists.ID_points = points.ID_points)
    ORDER BY points.Score DESC limit 3;

**3. Wylistowanie wszystkich wykonawców według ilości przyznanych punktów:**

    SELECT artists.Name,points.Score FROM artists 
    LEFT JOIN points ON artists.ID_points=points.ID_points 
    ORDER BY points.Score DESC;

**4. Wylistowanie wszystkich wykonawców wraz z ich danymi:**

    SELECT artists.Name,people.Name,people.Surname,songs.Name,songs.Gendre,countries.Name
    FROM artists
    LEFT JOIN people ON people.ID_artist=artists.ID_artist
    LEFT JOIN countries ON countries.ID_country=artists.ID_country
    LEFT JOIN songs ON songs.ID_song=artists.ID_song
    ORDER BY artists.Name ASC;

**5. Wyświetlenie wszystkich państw i ilości uczestników dla każdego państwa:**

    SELECT countries.Name, count(countries.ID_country) AS Ilosc_uczestnikow FROM countries
    RIGHT JOIN artists ON artists.ID_country=countries.ID_country
    RIGHT JOIN people ON people.ID_artist=artists.ID_artist
    GROUP BY countries.Name
    ORDER BY Ilosc_uczestnikow DESC;

**6. Wylistowanie gatunów piosenek razem z liczbą wystąpień:**

    SELECT songs.Gendre, COUNT(songs.Gendre) AS ilosc_piosenek FROM songs
    GROUP BY songs.Gendre
    ORDER BY ilosc_piosenek DESC;

**7. Dodanie wykonawcy/zespołu:**

    INSERT INTO points VALUES(NULL,-1);
    INSERT INTO songs VALUES(NULL,"-1","-1");
    
    INSERT INTO artists
    VALUES (NULL,
           new_name,
           (SELECT countries.ID_country FROM countries WHERE countries.Name=new_country),
           (SELECT points.ID_points FROM points ORDER BY points.ID_points DESC LIMIT 1),
           (SELECT songs.ID_song FROM songs ORDER BY songs.ID_song DESC LIMIT 1));

**8. Dodanie państwa:**

    INSERT INTO countries
    VALUES (NULL,new_country);

**9. Dodanie pojedyńczej osoby:**

    INSERT INTO people
    VALUES (NULL,person_name,person_surname,
           (SELECT artists.ID_artist FROM artists WHERE artists.Name = person_art ));

**10. Zaktualizowanie nazwy i gatunku piosenki:**

    UPDATE songs
    LEFT JOIN artists ON artists.ID_song =songs.ID_song
    SET songs.Name = new_song_name,songs.Gendre = new_gendre
    WHERE artists.Name = artistName;

**11. Zaktualizowanie danych osobowych:**

    UPDATE people
    SET Name = new_name, Surname = new_surname
    WHERE (Name = old_name AND Surname = old_surname);

**12. Zaktualizowanie ilości punktów uczestnika:**

    UPDATE (points LEFT JOIN artists on artists.ID_points = points.ID_points)
    SET points.Score = new_score
    WHERE artists.Name = artistName;

**13. Usunięcie wykonawcy/zespołu:**

    DECLARE song_id_rm INT;
    DECLARE points_id_rm INT;
    
    SET song_id_rm = (SELECT artists.ID_song FROM artists WHERE artists.Name = artist_name);
    SET points_id_rm = (SELECT artists.ID_points FROM artists WHERE artists.Name = artist_name);
    
    DELETE FROM artists
    WHERE artists.Name = artist_name;
    
    DELETE FROM songs
    WHERE songs.ID_song = song_id_rm;
    
    DELETE FROM points
    WHERE points.ID_points = points_id_rm;

**14. Usunięcie państwa:**

    DELETE FROM countries
    WHERE countries.Name = country_name;

**15. Usunięcie pojedyńczej osoby:**

    DELETE FROM people
    WHERE people.Name = name_to_del AND people.Surname = sur_to_del;

**16. Uzupełnienie punktów dla każdego wykonawcy losową wartością z przedziału(0-1000) po dodaniu nowego wykonawcy:**

    UPDATE points SET points.Score = FLOOR(RAND() * (1000 + 1));


## Aplikacja

Aplikacja została stworzona z wykorzystaniem framework'u pyQt do tworzenia aplikacji okienkowych.

![enter image description here](https://github.com/KrzysiekJa/db2020-project-eurowizja-2/blob/master/resources/eurowizja-aplikacja.png)

Aplikacja w wyznaczonym okienku wypisuje wyniki działania funkcjonalności, zgodnie z tym jaki wybrało się przycisk typu radio button, i po przysiśnięciu przycisku Read. Pozostałe przyciski i linie pobierające dane służą zarządzaniu samą bazą, bez wypisywania komunikatow.

Instrukcja stosowania poleceń do bazy (przyciski):
- Add artist: wypełnić: 'Artist's name' + 'Country',
- Delete artist: wypełnić: 'Artist's name',
- Add country: wypełnić: 'Country',
- Delete country: wypełnić: 'Country',
- Update points: wypełnić: 'Points',
- Update song: wypełnić: 'Song name',
- Update data: wypełnić: 'Old name', 'Old surname', 'New name', 'New surname',
- Add person: wypełnić: 'New name', 'New surname', 'Artist's name,
- Delete person: wypełnić: 'New name', 'New surname'.


## Dodatkowe uwagi

W celu poprawnej odpalenia aplikacji należy uprzednio pobrać paliety dzięki wywołaniu w terminalu poleceń: 

- dla Windows : 
```
                python -m pip install pymysql

                python -m pip install pyqt5
```

- dla Linux/MacOs : 
```
                    pip3 install pymysql

                    pip3 install pyqt5
```

By uruchomic aplikację w terminalu należy przenieść się do katalogu lokalizacji pliku main.py i odpalić go za pomocą komendy: python3 main.py i korzystać z możliwości jakie daje nasza aplikacja.


