# Game Console Analysis on SQL
The purpose of this project was to upload the datasests into a database on SQL and perform analytics.

## About the Data
There are two .csv files, aquired from [here](https://www.superdatascience.com/pages/sql): ConsoleDates.csv and ConsoleGames.csv

### ConsoleGames.csv
A historic list of all console games related between 1980 and 2015.

### ConsoleDates.csv
A historic list of all console platforms (such as Wii, Play Station, Xbox) and information about them.

These two datasets were imported into SQL. Here are sample images of the first 10 rows in each table:

![image](https://github.com/mhuang11/gameconsole/assets/78035136/f22946be-b42c-4d17-b51f-8fdc95ea65cb)

![image](https://github.com/mhuang11/gameconsole/assets/78035136/5b81430e-3fd0-4aa2-854d-71ca23f3b339)

## Analysis

1. Calculate what % of Global Sales were made in North America

![image](https://github.com/mhuang11/gameconsole/assets/78035136/782eb52f-c243-4fac-8ded-9804bcfa6647)

49.3% of Global Sales were made in North America

2. Extract a view of the console games titles ordered by platform name in ascending order and Year of release in descending order.

![image](https://github.com/mhuang11/gameconsole/assets/78035136/534b5d59-75a7-48c0-9c79-6a4765930951)

3. For each game title extract the first four letters of the publisher's name.

![image](https://github.com/mhuang11/gameconsole/assets/78035136/13845049-474e-40d5-aff3-11a9bf6bf3b1)

4. Display all console platforms which were released either just before Black Friday or just before Christmas (in any year).
I assumed that "before Black Friday" is Nov. 15-25 of any year and "before Christmas" was Dec. 15-25 of any year.

![image](https://github.com/mhuang11/gameconsole/assets/78035136/630c05d3-710d-44cc-87af-9c2dd0c6e59d)

5. Order the platforms by their longevity in ascending order i.e. the platform which was available for the longest at the bottom

![image](https://github.com/mhuang11/gameconsole/assets/78035136/9ffebd4e-f36e-4a08-917c-021dea8693ef)

6.  Demonstrate how to deal with the Game_Year column if the client wants to convert it to a diferent data type.

![image](https://github.com/mhuang11/gameconsole/assets/78035136/dac3447d-1098-427e-8f4b-ea1a15724a11)

![image](https://github.com/mhuang11/gameconsole/assets/78035136/489d5bef-5d57-4926-af0e-a216b4718351)

7. Provide recommendations on how to deal with missing data in the file.

Example 1: For missing values in dates.Discontinued, fill in today's date (As of now, "2023-06-02").

Example 2: For missing values in dates.Comment, fill in with "No Comment".

![image](https://github.com/mhuang11/gameconsole/assets/78035136/f8836803-1320-42f6-868e-af382565001a)

