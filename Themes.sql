CREATE TABLE QuoteThemes (
    QuoteID INT,
    ThemeID INT,
    PRIMARY KEY (QuoteID, ThemeID),

    FOREIGN KEY (QuoteID) REFERENCES Quotes(QuoteID),
    FOREIGN KEY (ThemeID) REFERENCES Themes(ThemeID)
);