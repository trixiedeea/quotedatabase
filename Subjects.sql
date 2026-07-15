CREATE TABLE QuoteSubjects (
    QuoteID INT,
    SubjectID INT,
    PRIMARY KEY (QuoteID, SubjectID),

    FOREIGN KEY (QuoteID) REFERENCES Quotes(QuoteID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);