/*stores who entered each quote*/

CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE
);

/*who said the quote*/
CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthYear INT,
    DeathYear INT,
    Nationality VARCHAR(50)
);

/*what the quote is about*/
CREATE TABLE Subjects (
    SubjectID INT AUTO_INCREMENT PRIMARY KEY,
    SubjectName VARCHAR(100) UNIQUE
);

/*theme of the quote*/
CREATE TABLE Themes (
    ThemeID INT AUTO_INCREMENT PRIMARY KEY,
    ThemeName VARCHAR(100) UNIQUE
);

/*type of quote*/
CREATE TABLE QuoteTypes (
    TypeID INT AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(50) UNIQUE
);

/*Quotes*/
CREATE TABLE Quotes (
    QuoteID INT AUTO_INCREMENT PRIMARY KEY,
    QuoteText TEXT NOT NULL,
    AuthorID INT,
    TypeID INT,
    DateAdded DATETIME DEFAULT CURRENT_TIMESTAMP,
    AddedBy INT,
    Source VARCHAR(255),
    Notes TEXT,

    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (TypeID) REFERENCES QuoteTypes(TypeID),
    FOREIGN KEY (AddedBy) REFERENCES Users(UserID)
);

/*Many-to-many relationship between Quotes and Subjects*/
CREATE TABLE QuoteSubjects (
    QuoteID INT,
    SubjectID INT,
    PRIMARY KEY (QuoteID, SubjectID),

    FOREIGN KEY (QuoteID) REFERENCES Quotes(QuoteID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);

/*Many-to-many relationship between Quotes and Themes*/
CREATE TABLE QuoteThemes (
    QuoteID INT,
    ThemeID INT,
    PRIMARY KEY (QuoteID, ThemeID),

    FOREIGN KEY (QuoteID) REFERENCES Quotes(QuoteID),
    FOREIGN KEY (ThemeID) REFERENCES Themes(ThemeID)
);

/*multiple subjects per quote*/
CREATE TABLE QuoteSubjects (
    QuoteID INT,
    SubjectID INT,
    PRIMARY KEY (QuoteID, SubjectID),

    FOREIGN KEY (QuoteID) REFERENCES Quotes(QuoteID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);

/*multiple themes per quote*/
CREATE TABLE QuoteThemes (
    QuoteID INT,
    ThemeID INT,
    PRIMARY KEY (QuoteID, ThemeID),

    FOREIGN KEY (QuoteID) REFERENCES Quotes(QuoteID),
    FOREIGN KEY (ThemeID) REFERENCES Themes(ThemeID)
);
