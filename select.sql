USE M164_LB2;


SELECT g.Name AS Genre, m.Title, m.Release_Date
FROM Genre g
JOIN Movie_Genres mg ON g.id = mg.GenreID
JOIN Movie m ON mg.MovieID = m.id
WHERE m.Release_Date = (
    SELECT MAX(m2.Release_Date)
    FROM Movie m2
    JOIN Movie_Genres mg2 ON m2.id = mg2.MovieID
    WHERE mg2.GenreID = g.id
);

SELECT m.Title, a.First_name, a.Last_name, a.Birthday
FROM Movie m
JOIN Movie_Actors ma ON m.id = ma.MovieID
JOIN Actor a ON ma.ActorID = a.id
WHERE a.Birthday = (
    SELECT MIN(a2.Birthday)
    FROM Actor a2
    JOIN Movie_Actors ma2 ON a2.id = ma2.ActorID
    WHERE ma2.MovieID = m.id
);

SELECT g.Name AS Genre, AVG(m.Rating) AS AverageRating
FROM Genre g
JOIN Movie_Genres mg ON g.id = mg.GenreID
JOIN Movie m ON mg.MovieID = m.id
GROUP BY g.id;

SELECT m.Title, COUNT(mg.GenreID) AS GenreCount
FROM Movie m
INNER JOIN Movie_Genres mg ON m.id = mg.MovieID
WHERE (
    SELECT COUNT(mg.GenreID)
    FROM Movie_Genres mg
    WHERE mg.MovieID = m.id
) > 1
GROUP BY m.id
ORDER BY GenreCount DESC;

SELECT loc.City, loc.Country, COUNT(u.id) AS UserCount
FROM Location loc
LEFT JOIN User u ON loc.id = u.LocationID
GROUP BY loc.id;

SELECT DISTINCT m.Title, a.First_name, a.Last_name, a.Birthday
FROM Movie m
JOIN Movie_Actors ma ON m.id = ma.MovieID
JOIN Actor a ON ma.ActorID = a.id
WHERE a.Birthday > '1990-01-01';

SELECT m.Title, m.Release_Date
FROM Movie m
WHERE m.id IN (
    SELECT d.MovieID
    FROM Director d
);

SELECT u.First_name, u.Last_name, u.Email
FROM User u
WHERE u.id IN (
    SELECT r.UserID
    FROM Review r
    WHERE r.Rating = 5
);

SELECT DISTINCT d.First_name, d.Last_name
FROM Director d
JOIN Movie m ON d.MovieID = m.id
WHERE EXISTS (
    SELECT 1
    FROM Review r
    WHERE r.MovieID = m.id
);

SELECT m.Title, m.Description, m.Release_Date, (
    SELECT MAX(r.Rating)
    FROM Review r
    WHERE r.MovieID = m.id
) AS MaxRating
FROM Movie m;