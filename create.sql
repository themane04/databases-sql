CREATE DATABASE M164_LB2;

USE M164_LB2;

CREATE TABLE Location
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    Postal_code INT         NOT NULL,
    Street      VARCHAR(100),
    City        VARCHAR(50) NOT NULL,
    Country     VARCHAR(50),
    CONSTRAINT check_plz check (Postal_code BETWEEN 10000 AND 99999)
);

CREATE TABLE User
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    First_name VARCHAR(50)  NOT NULL,
    Last_name  VARCHAR(50)  NOT NULL,
    Birthday   DATE,
    Email      VARCHAR(255) NOT NULL UNIQUE,
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES Location (id),
    CONSTRAINT fk_Location
        FOREIGN KEY (LocationID) REFERENCES Location (ID)
            ON DELETE SET NULL,
    CONSTRAINT not_null_email
        CHECK (Email IS NOT NULL)
);

CREATE TABLE Actor
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name  VARCHAR(50) NOT NULL,
    Birthday   DATE,
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES Location (id) ON DELETE SET NULL
);

CREATE TABLE List
(
    id     INT AUTO_INCREMENT PRIMARY KEY,
    Name   VARCHAR(255) NOT NULL,
    UserId INT          NOT NULL,
    FOREIGN KEY (UserId) REFERENCES User (id) ON DELETE CASCADE
);

CREATE TABLE Movie
(
    id           INT AUTO_INCREMENT PRIMARY KEY,
    Title        VARCHAR(255) NOT NULL,
    Description  TEXT,
    Release_Date DATE,
    Duration     INT,
    Rating       DECIMAL(2, 1)
);

CREATE TABLE Director
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name  VARCHAR(50) NOT NULL,
    Birthday   DATE,
    MovieID INT,
    FOREIGN KEY (MovieID) REFERENCES Movie (id) ON DELETE CASCADE
);

CREATE TABLE Review
(
    id      INT AUTO_INCREMENT PRIMARY KEY,
    Rating  DECIMAL(2, 1) NOT NULL,
    Comment TEXT,
    MovieID INT NOT NULL,
    UserID  INT NOT NULL,
    FOREIGN KEY (MovieID) REFERENCES Movie (id) ON DELETE CASCADE,
    FOREIGN KEY (UserID) REFERENCES User (id) ON DELETE CASCADE
);

CREATE TABLE Genre
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE Movie_Genres
(
    MovieID INT NOT NULL,
    GenreID INT NOT NULL,
    PRIMARY KEY (MovieID, GenreID),
    FOREIGN KEY (MovieID) REFERENCES Movie (id) ON DELETE CASCADE,
    FOREIGN KEY (GenreID) REFERENCES Genre (id) ON DELETE CASCADE
);

CREATE TABLE Movie_Actors
(
    MovieID INT NOT NULL,
    ActorID INT NOT NULL,
    PRIMARY KEY (MovieID, ActorID),
    FOREIGN KEY (MovieID) REFERENCES Movie (id) ON DELETE CASCADE,
    FOREIGN KEY (ActorID) REFERENCES Actor (id) ON DELETE CASCADE
);

CREATE TABLE List_Movies
(
    ListID  INT NOT NULL,
    MovieID INT NOT NULL,
    PRIMARY KEY (ListID, MovieID),
    FOREIGN KEY (ListID) REFERENCES List (id) ON DELETE CASCADE,
    FOREIGN KEY (MovieID) REFERENCES Movie (id) ON DELETE CASCADE
);
