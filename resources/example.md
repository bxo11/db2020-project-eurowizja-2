# Eurowizja.

| Nazwisko i imię | Wydział | Kierunek | Semestr | Grupa | Rok akademicki |
| :-------------: | :-----: | :------: | :-----: | :---: | :------------: |
| Krzysztof Jarek         | WIMiIP  | IS       |   4     | 3     | 2019/2020      |
| Krzysztof Klimczyk        | WIMiIP  | IS       |   4     | 3     | 2019/2020      |

## Projekt bazy danych
Tutaj ma znaleźć się opis projektu bazy danych. Na wstępie proszę zagnieździć obraz schematu w formie wektorowej, najlepiej plik SVG. Dodatkowo, w tej sekcji należy zawrzeć kilka przykładowych zapytań tworzących (lub w razie konieczności, modyfikujących) tabelę, tj. grupa DDL.

## Implementacja zapytań SQL

**1. Wyświetlenie zwycięscy wraz z danymi:**
SELECT artists.Name 
from (points INNER JOIN artists on artists.ID_points = points.ID_points)
order by points.Score DESC limit 1;
**2. Wyświetlenie zwycięskiej trójki:**
SELECT artists.Name, points.Score
from (points
INNER JOIN artists on artists.ID_points = points.ID_points)
order by points.Score DESC limit 3;
**3. Wylistowanie wszystkich wykonawców według ilości przyznanych punktów:**
**4. Wylistowanie wszystkich wykonawców wraz z ich danymi:**
**5. Wyświetlenie wszystkich państw i ilości uczestników dla każdego państwa:**
**6. Wylistowanie gatunów piosenek razem z liczbą wystąpień:**
**7. Dodanie wykonawcy/zespołu:**
**8. Dodanie państwa:**
**9. Dodanie pojedyńczej osoby:**
**10. Zaktualizowanie nazwy i gatunku piosenki:**
**11. Zaktualizowanie danych osobowych:**
**12. Zaktualizowanie ilości punktów uczestnika:**
**13. Usunięcie wykonawcy/zespołu:**
**14. Usunięcie państwa:**
**15. Usunięcie pojedyńczej osoby:**

**16. Uzupełnienie punktów dla każdego wykonawcy losową wartością z przedziału(0-1000):**

Tutaj należy wylistować wszystkie funkcjonalności, wraz z odpowiednimi zapytaniami SQL. W tej sekcji należy zawrzeć wyłącznie zapytania z grupy DML oraz DQL.

## Aplikacja
Tutaj należy opisać aplikację, która wykorzystuje zapytania SQL z poprzedniego kroku. Można, jednak nie jest to konieczne, wrzucić tutaj istotne snippety z Waszych aplikacji.

## Dodatkowe uwagi
W tej sekcji możecie zawrzeć informacje, których nie jesteście w stanie przypisać do pozostałych. Mogą to być również jakieś komentarze, wolne uwagi, itp.
