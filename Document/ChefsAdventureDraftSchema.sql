--
-- File generated with SQLiteStudio v3.4.4 on Wed May 8 15:00:13 2024
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Ingredients
CREATE TABLE Ingredients (
    IngredientID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name         TEXT    NOT NULL,
    Quantity     ANY     NOT NULL
)
STRICT;


-- Table: Recipe
CREATE TABLE Recipe (
    RecipeID       INTEGER PRIMARY KEY AUTOINCREMENT,
    Title          TEXT    UNIQUE
                           NOT NULL,
    Description    TEXT    NOT NULL,
    [Serving Size] INTEGER,
    Category       TEXT    NOT NULL
)
STRICT;


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
