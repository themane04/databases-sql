USE M164_LB2;


LOAD DATA LOCAL
    INFILE './lb2/Movie_Database/Location.csv'
    INTO TABLE Location
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS
    (@dummy, Street, Postal_code, Country, City);


LOAD DATA LOCAL
    INFILE './lb2/Movie_Database/User.csv'
    INTO TABLE User
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS
    (@dummy, Birthday, EMail, First_name, Last_name, LocationID);

LOAD DATA LOCAL
    INFILE './lb2/Movie_Database/Actor.csv'
    INTO TABLE Actor
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS
    (@dummy, Birthday, First_name, Last_name, LocationID);

LOAD DATA LOCAL
    INFILE './lb2/Movie_Database/Genre.csv'
    INTO TABLE Genre
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS
    (@dummy, Name);

LOAD DATA LOCAL
    INFILE './lb2/Movie_Database/Movie.csv'
    INTO TABLE Movie
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS
    (@dummy, Title, Rating, Description, Duration, Release_Date);

LOAD DATA LOCAL
    INFILE './lb2/Movie_Database/List.csv'
    INTO TABLE List
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS
    (@dummy, Name, UserID);

LOAD DATA LOCAL
    INFILE './lb2/Movie_Database/Directors.csv'
    INTO TABLE Director
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS
    (@dummy, First_name, Last_name, @dummy, @dummy, MovieID);

LOAD DATA LOCAL
    INFILE './lb2/Movie_Database/Reviews.csv'
    INTO TABLE Review
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS
    (@dummy, MovieID, UserID, Rating, Comment, @dummy);

LOAD DATA LOCAL
    INFILE './lb2/Movie_Database/Actor_Movies.csv'
    INTO TABLE Movie_Actors
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS
    (ActorID, MovieID);

LOAD DATA LOCAL
    INFILE './lb2/Movie_Database/Genre_Movies.csv'
    INTO TABLE Movie_Genres
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS
    (MovieID, GenreID);

LOAD DATA LOCAL
    INFILE './lb2/Movie_Database/List_Movies.csv'
    INTO TABLE List_Movies
    FIELDS TERMINATED BY ',' ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS
    (@dummy, ListID, MovieID);
