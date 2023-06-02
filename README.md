# Game Console Analysis on SQL
The purpose of this project was to upload the datasests into a database on SQL and perform analytics.

## About the Data
There are two .csv files, aquired from [here](https://www.superdatascience.com/pages/sql): ConsoleDates.csv and ConsoleGames.csv

### ConsoleGames.csv
A historic list of all console games related between 1980 and 2015.

### ConsoleDates.csv
A historic list of all console platforms (such as Wii, Play Station, Xbox) and information about them.

These two datasets were imported into SQL. Here are sample images of the first 10 rows in each table:
![image](https://github.com/mhuang11/gameconsole/assets/78035136/f5ae9f78-d82d-4269-9fcf-b464521ec176)
![image](https://github.com/mhuang11/gameconsole/assets/78035136/1ed98968-14ca-45fa-af41-51a53bfb2702)

## Analysis

1. Calculate what % of Global Sales were made in North America

![image](https://github.com/mhuang11/gameconsole/assets/78035136/a4739b56-5bce-4bf8-90d1-ed5e7a0d4851)

49.3% of Global Sales were made in North America

2. Extract a view of the console games titles ordered by platform name in ascending order and Year of release in descending order.

![image](https://github.com/mhuang11/gameconsole/assets/78035136/17feb0bf-d68b-4721-9b50-12806f9cc498)

3. For each game title extract the first four letters of the publisher's name.

![image](https://github.com/mhuang11/gameconsole/assets/78035136/41793981-37ae-48a6-8631-484cd5c6dc41)

4. Display all console platforms which were released either just before Black Friday or just before Christmas (in any year).
I assumed that "before Black Friday" is Nov. 15-25 of any year and "before Christmas" was Dec. 15-25 of any year.

![image](https://github.com/mhuang11/gameconsole/assets/78035136/8c04e6d4-d6e2-4af8-a862-e44d51eb0a37)

5. Order the platforms by their longevity in ascending order i.e. the platform which was available for the longest at the bottom

![image](https://github.com/mhuang11/gameconsole/assets/78035136/768b9e3e-fb76-45f1-a8f3-7aa742f2be0c)

6.  Demonstrate how to deal with the Game_Year column if the client wants to convert it to a diferent data type.

![image](https://github.com/mhuang11/gameconsole/assets/78035136/6eeaeb19-32a0-4d31-9549-1db08d27e596)
![image](https://github.com/mhuang11/gameconsole/assets/78035136/38bc4574-0551-4064-ba40-e603f7ccb59d)

7. Provide recommendations on how to deal with missing data in the file.
Example 1: For missing values in dates.Discontinued, fill in today's date.
Example 2: For missing values in dates.Comment, fill in with "No Comment".
![image](https://github.com/mhuang11/gameconsole/assets/78035136/26b7946c-f992-4469-8432-ee474e5cd9fd)

