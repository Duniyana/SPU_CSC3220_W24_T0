--
-- File generated with SQLiteStudio v3.4.4 on Fri May 10 15:36:13 2024
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Checklist
CREATE TABLE Checklist (
    IngredientID INTEGER REFERENCES Ingredients (IngredientID),
    StepID       INTEGER REFERENCES Steps (StepID) 
)
STRICT;


-- Table: Ingredients
CREATE TABLE Ingredients (
    IngredientID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name         TEXT    NOT NULL,
    Quantity     REAL    NOT NULL,
    Measurements TEXT    NOT NULL,
    RecipeID     INTEGER REFERENCES Recipe (RecipeID) 
)
STRICT;


-- Table: Recipe
CREATE TABLE Recipe (
    RecipeID    INTEGER PRIMARY KEY AUTOINCREMENT,
    Title       TEXT    UNIQUE
                        NOT NULL,
    Categories  TEXT    NOT NULL,
    Description TEXT    NOT NULL,
    ServingSize INTEGER
)
STRICT;


-- Table: Steps
CREATE TABLE Steps (
    StepID   INTEGER PRIMARY KEY AUTOINCREMENT,
    RecipeID INTEGER REFERENCES Recipe (RecipeID) 
)
STRICT;


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
