USE console;

# ===== Challenge 1 =====
# Calculate what % of Global Sales were made in North America.

SELECT 
SUM(NA_Sales), 
SUM(EU_Sales), 
SUM(JP_Sales), 
SUM(Other_Sales), 
SUM(NA_Sales) / SUM(NA_Sales + EU_Sales + JP_Sales + Other_Sales) AS NA_percent
From games g;

# ===== Challenge 2 =====
# Extract a view of the console games titles ordered by platform name in 
# Ascending order and Year of release in descending order.

SELECT g.Rank, g.Name, g.Platform, g.Year
FROM games g
ORDER BY g.Platform ASC, g.Year DESC
LIMIT 0, 20;

# ===== Challenge 3 =====
# For each game title extract the first four letters of the publisher's name.
SELECT g.Rank, g.Name, g.Publisher,
SUBSTRING(Publisher, 1, 4) AS First4Letters
FROM games g
LIMIT 0, 10;

# ===== Challenge 4 =====
# Display all console platforms which were released either just before Black Friday or just before Christmas (in any year).

SELECT *
FROM dates
WHERE (MONTH(FirstRetailAvailability) = 11 AND DAY(FirstRetailAvailability) BETWEEN 15 AND 25)
	OR (MONTH(FirstRetailAvailability) = 12 AND DAY(FirstRetailAvailability) BETWEEN 15 AND 25);

# ===== Challenge 5 =====
# Order the platforms by their longevity in ascending order
# i.e. the platform which was available for the longest at the bottom

SELECT *,
DATEDIFF(d.Discontinued, d.FirstRetailAvailability) AS DateDiff
FROM dates d
ORDER BY DateDiff ASC;

# ===== Challenge 6 =====
#Demonstrate how to deal with the Game_Year column if the client wants to convert it to a diferent data type

# Check the original data types. Year is INT.
SELECT COLUMN_NAME, DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'games';

# Change data type for Year
ALTER TABLE games
MODIFY Year varchar(45);

# Check data types again. Year is now VARCHAR.

# ===== Challenge 7 =====
# Provide recommendations on how to deal with missing data in the file

#Have the blank spaces be filled with NULL instead of ''
UPDATE dates
SET Discontinued = NULLIF(Discontinued, ''), Comment = NULLIF(Comment, '');

# For missing value in dates.Discontinued (i.e. fill in dates):
UPDATE dates 
SET Discontinued = CURDATE()
WHERE Discontinued IS NULL;

# For missing characters in dates.Comment (i.e. Replacing NULL with "No Comment"):
UPDATE dates
SET Comment = "No Comment"
WHERE Comment IS NULL;

# Check table
SELECT * FROM dates;