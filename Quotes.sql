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