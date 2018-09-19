


SELECT 
right('sunlight',5) AS 'The Answer'

SELECT 
SUBSTRING('thewhitegoat', 4, 5) AS 'The Answer'
SELECT 
LTRIM('          the apple') AS 'The Answer'

SELECT 
UPPER('Abraham Lincoln') AS 'Convert to Uppercase',
LOWER('ABRAHAM LINCOLN') AS 'Convert to Lowercase'

SELECT GETDATE()

SELECT DATEPART(month, '5/6/2017')
SELECT DATEPART(day, '5/6/2017')

SELECT DATEPART(week, '5/6/2017')

SELECT DATEPART(weekday, '5/6/2017')
SELECT DATEDIFF(day, '2017-07-08', '2017-08-14')

SELECT DATEDIFF(week, '2017-07-08', '2017-08-14')

SELECT DATEDIFF(month, '2017-07-08', '2017-08-14')

SELECT DATEDIFF(year, '2017-07-08', '2017-08-14')

SELECT ROUND(712.863, 3)

SELECT ROUND(712.863, 2)

SELECT ROUND(712.863, 1)

SELECT ROUND(712.863, 0)

SELECT ROUND(712.863, -1)

SELECT ROUND(712.863, -2)
SELECT PI( )

SELECT ROUND(PI( ), 2)

SELECT POWER(5,2) AS '5 Squared'

SELECT POWER(25,.5) AS 'Square Root of 25'

SELECT 
'2017-04-11' AS 'Original Date',
CAST('2017-04-11' AS DATETIME) AS 'Converted Date'




-- Customers table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Customers')
AND TYPE IN (N'U'))
DROP TABLE Customers
GO

CREATE TABLE Customers
(CustomerID INT NOT NULL,
FirstName VARCHAR(30) NULL,
LastName VARCHAR(30) NULL)


INSERT INTO Customers (CustomerID, FirstName, LastName)
VALUES (1, 'abc', 'xyz')

INSERT INTO Customers (CustomerID, FirstName, LastName)
VALUES (2, '123', '456')

INSERT INTO Customers (CustomerID, FirstName, LastName)
VALUES (3, 'Paul', 'Johnson')

INSERT INTO Customers (CustomerID, FirstName, LastName)
VALUES (4, 'Samuel', 'Martinez')


select * from Customers
SELECT LastName
FROM Customers

---------------------------------------------------------------------------------
-- Sales table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Sales')
AND TYPE IN (N'U'))
DROP TABLE Sales
GO

CREATE TABLE Sales
(SalesID INT NOT NULL,
FirstName VARCHAR(30) NULL,
LastName VARCHAR(30) NULL,
QuantityPurchased INT NULL,
PricePerItem FLOAT NULL)

INSERT INTO Sales (SalesID, FirstName, LastName, QuantityPurchased, PricePerItem)
VALUES (1, 'Andrew', 'Li', 4, 2.5)

INSERT INTO Sales (SalesID, FirstName, LastName, QuantityPurchased, PricePerItem)
VALUES (2, 'Carol', 'White', 10, 1.25)

INSERT INTO Sales (SalesID, FirstName, LastName, QuantityPurchased, PricePerItem)
VALUES (3, 'James', 'Carpenter', 5, 4)

SELECT
'First Name:',
FirstName
FROM Sales
SELECT
5,
FirstName
FROM Sales

SELECT
SalesID,
QuantityPurchased,
PricePerItem,
QuantityPurchased * PricePerItem
FROM Sales

SELECT
SalesID,
FirstName,
LastName,
FirstName + ' ' + LastName
FROM Sales

SELECT
SalesID,
FirstName,
LastName,
FirstName + ' ' + LastName AS 'Name'
FROM Sales
SELECT
SalesID,
FirstName,
LastName,
FirstName + ' ' + LastName Name
FROM Sales














---------------------------------------------------------------------------------
-- Products table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Products')
AND TYPE IN (N'U'))
DROP TABLE Products
GO

CREATE TABLE Products
(ProductID INT NOT NULL,
Description VARCHAR(30) NULL,
Weight INT NULL)

INSERT INTO Products (ProductID, Description)
VALUES (1, 'Printer A')

INSERT INTO Products (ProductID, Description, Weight)
VALUES (2, 'Printer B', 0)

INSERT INTO Products (ProductID, Description, Weight)
VALUES (3, 'Monitor C', 2)

INSERT INTO Products (ProductID, Description, Weight)
VALUES (3, 'Laptop D', 4)

SELECT 
Description, 
Weight
FROM Products
SELECT 
Description,
ISNULL(CAST(Weight AS VARCHAR), 'Unknown') AS 'Weight'
FROM Products

---------------------------------------------------------------------------------
-- Salespeople table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Salespeople')
AND TYPE IN (N'U'))
DROP TABLE Salespeople
GO

CREATE TABLE Salespeople
(SalespersonID INT NOT NULL,
FirstName VARCHAR(30) NULL,
LastName VARCHAR(30) NULL)

INSERT INTO Salespeople (SalespersonID, FirstName, LastName)
VALUES (1, 'Gregory', 'Brown')

INSERT INTO Salespeople (SalespersonID, FirstName, LastName)
VALUES (2, 'Carla', 'Brown')

INSERT INTO Salespeople (SalespersonID, FirstName, LastName)
VALUES (3, 'Natalie', 'Lopez')

INSERT INTO Salespeople (SalespersonID, FirstName, LastName)
VALUES (4, 'Connie', 'King')

SELECT 
FirstName, 
LastName
FROM Salespeople
ORDER BY LastName
SELECT 
FirstName, 
LastName
FROM Salespeople
ORDER BY FirstName
SELECT 
FirstName, 
LastName
FROM Salespeople
ORDER BY LastName, FirstName
SELECT 
FirstName, 
LastName, 
QuantityPurchased
FROM Sales
WHERE LastName = 'Carpenter'


-----------------------------------------------------------------------------------------
-- TableForSort table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'TableForSort')
AND TYPE IN (N'U'))
DROP TABLE TableForSort
GO

CREATE TABLE TableForSort
(TableID INT NOT NULL,
CharacterData VARCHAR(30) NULL,
NumericData INT NULL)

INSERT INTO TableForSort (TableID, CharacterData, NumericData)
VALUES (1, '23', 23)

INSERT INTO TableForSort (TableID, CharacterData, NumericData)
VALUES (2, '5', 5)

INSERT INTO TableForSort (TableID, CharacterData)
VALUES (3, 'Dog')

INSERT INTO TableForSort (TableID, NumericData)
VALUES (4, -6)

SELECT NumericData
FROM TableForSort
ORDER BY NumericData 

SELECT 
ISNULL(NumericData, 0) AS 'NumericData'
FROM TableForSort
ORDER BY ISNULL(NumericData,0)

SELECT 
CharacterData
FROM TableForSort
ORDER BY CharacterData
----------------------------------------------------------------------------------------------
-- Books table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Books')
AND TYPE IN (N'U'))
DROP TABLE Books
GO

CREATE TABLE Books
(BookID INT NOT NULL,
Title VARCHAR(30) NULL,
Author VARCHAR (30) NULL,
CurrentMonthSales INT NULL)

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (1, 'Pride and Prejudice', 'Austen', 15)

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (2, 'Animal Farm', 'Orwell', 7)

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (3, 'Merchant of Venice', 'Shakespeare', 5)

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (4, 'Romeo and Juliet', 'Shakespeare', 8)

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (5, 'Oliver Twist', 'DIckens', 3)

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (6, 'Candide', 'Voltaire', 9)

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (7, 'The Scarlet Letter', 'Hawthorne', 12)

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (8, 'Hamlet', 'Shakespeare', 2)

-- Movies table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Movies')
AND TYPE IN (N'U'))
DROP TABLE Movies
GO

CREATE TABLE Movies
(MovieID INT NOT NULL,
MovieTitle VARCHAR(30) NULL,
Rating VARCHAR(10) NULL)

INSERT INTO Movies (MovieID, MovieTitle, Rating) VALUES (1, 'Love Actually', 'R')

INSERT INTO Movies (MovieID, MovieTitle, Rating) VALUES (2, 'North by Northwest', 'Not Rated')

INSERT INTO Movies (MovieID, MovieTitle, Rating) VALUES (3, 'Love and Death', 'PG')

INSERT INTO Movies (MovieID, MovieTitle, Rating) VALUES (4, 'The Truman Show', 'PG')

INSERT INTO Movies (MovieID, MovieTitle, Rating) VALUES (5, 'Everyone Says I Love You', 'R')

INSERT INTO Movies (MovieID, MovieTitle, Rating) VALUES (6, 'Down with Love', 'PG-13')

INSERT INTO Movies (MovieID, MovieTitle, Rating) VALUES (7, 'Finding Nemo', 'G')


SELECT 
MovieTitle AS 'Movie'
FROM Movies
WHERE MovieTitle LIKE '%LOVE'

SELECT 
MovieTitle AS 'Movie'
FROM Movies
WHERE MovieTitle LIKE 'LOVE%'

SELECT 
MovieTitle AS 'Movie'
FROM Movies
WHERE MovieTitle LIKE '% LOVE %'


-- Actors table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Actors')
AND TYPE IN (N'U'))
DROP TABLE Actors
GO

CREATE TABLE Actors
(ActorID INT NOT NULL,
FirstName VARCHAR(30) NULL,
LastName VARCHAR(30) NULL)

INSERT INTO Actors (ActorID, FirstName, LastName) VALUES (1, 'Cary', 'Grant')

INSERT INTO Actors (ActorID, FirstName, LastName) VALUES (2, 'Mary', 'Steenburgen')

INSERT INTO Actors (ActorID, FirstName, LastName) VALUES (3, 'Jon', 'Voight')

INSERT INTO Actors (ActorID, FirstName, LastName) VALUES (4, 'Dustin', 'Hoffman')

INSERT INTO Actors (ActorID, FirstName, LastName) VALUES (5, 'John', 'Wayne')

INSERT INTO Actors (ActorID, FirstName, LastName) VALUES (6, 'Gary', 'Cooper')


SELECT 
FirstName,
LastName
FROM Actors
WHERE FirstName LIKE '_ARY'

SELECT 
FirstName,
LastName
FROM Actors
WHERE FirstName LIKE 'J_N'
SELECT 
FirstName,
LastName
FROM Actors
WHERE FirstName LIKE '[CM]ARY'
SELECT 
FirstName,
LastName
FROM Actors
WHERE FirstName LIKE '[^CM]ARY'


-- Purchases table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Purchases')
AND TYPE IN (N'U'))
DROP TABLE Purchases
GO

CREATE TABLE Purchases
(PurchaseID INT NOT NULL,
CustomerName VARCHAR(30) NULL,
State VARCHAR (5) NULL,
QuantityPurchased INT NULL,
PricePerItem FLOAT NULL)

INSERT INTO Purchases (PurchaseID, CustomerName, State, QuantityPurchased, PricePerItem) VALUES (1, 'Andrew Li', 'IL', 4, 2.5)

INSERT INTO Purchases (PurchaseID, CustomerName, State, QuantityPurchased, PricePerItem) VALUES (1, 'Carol White', 'CA', 10, 1.25)

INSERT INTO Purchases (PurchaseID, CustomerName, State, QuantityPurchased, PricePerItem) VALUES (1, 'James Carpenter', 'NY', 5, 4)


SELECT
CustomerName,
QuantityPurchased
FROM Purchases
WHERE QuantityPurchased BETWEEN 5 AND 20
SELECT
CustomerName,
State
FROM Purchases
WHERE State = 'IL'
OR State = 'NY'
-- Groceries table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Groceries')
AND TYPE IN (N'U'))
DROP TABLE Groceries
GO

CREATE TABLE Groceries
(GroceryID INT NOT NULL,
CategoryCode VARCHAR(5) NULL,
Description VARCHAR (30) NULL)

INSERT INTO Groceries (GroceryID, CategoryCode, Description) VALUES (1, 'F', 'Apple')

INSERT INTO Groceries (GroceryID, CategoryCode, Description) VALUES (2, 'F', 'Orange')

INSERT INTO Groceries (GroceryID, CategoryCode, Description) VALUES (3, 'S', 'Mustard')

INSERT INTO Groceries (GroceryID, CategoryCode, Description) VALUES (4, 'V', 'Carrot')

INSERT INTO Groceries (GroceryID, CategoryCode, Description) VALUES (5, 'B', 'Water')

SELECT
Description,
ISNULL(Weight, 0) AS 'Weight'
FROM Products
WHERE Weight = 0
OR Weight IS NULL

-- GroceryCategories table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'GroceryCategories')
AND TYPE IN (N'U'))
DROP TABLE GroceryCategories
GO

CREATE TABLE GroceryCategories
(GroceryID INT NOT NULL,
Fruit VARCHAR(5) NULL,
Vegetable VARCHAR (5) NULL,
Spice VARCHAR (5) NULL,
Beverage VARCHAR (5) NULL,
Description VARCHAR (30) NULL)

INSERT INTO GroceryCategories (GroceryID, Fruit, Vegetable, Spice, Beverage, Description) VALUES (1, 'X', ' ', ' ', ' ', 'Apple')

INSERT INTO GroceryCategories (GroceryID, Fruit, Vegetable, Spice, Beverage, Description) VALUES (2, 'X', ' ', ' ', ' ', 'Orange')

INSERT INTO GroceryCategories (GroceryID, Fruit, Vegetable, Spice, Beverage, Description) VALUES (3, ' ', ' ', 'X', ' ', 'Mustard')

INSERT INTO GroceryCategories (GroceryID, Fruit, Vegetable, Spice, Beverage, Description) VALUES (4, ' ', 'X', ' ', ' ', 'Carrot')

INSERT INTO GroceryCategories (GroceryID, Fruit, Vegetable, Spice, Beverage, Description) VALUES (5, ' ', ' ', ' ', 'X', 'Water')

SELECT 
CASE 
WHEN CategoryCode='F' THEN 'Fruit'
WHEN CategoryCode='V' THEN 'Vegetable'
ELSE 'Other'
END AS 'Category',
Description
FROM Groceries

SELECT
CASE
WHEN Fruit = 'X' THEN 'Fruit'
WHEN Vegetable = 'X' THEN 'Vegetable'
ELSE 'Other'
END AS 'Category',
Description
FROM GroceryCategories


-- NorthAmerica table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'NorthAmerica')
AND TYPE IN (N'U'))
DROP TABLE NorthAmerica
GO

CREATE TABLE NorthAmerica
(CityID INT NOT NULL,
Country VARCHAR(5) NULL,
State VARCHAR (5) NULL,
Province VARCHAR (5) NULL,
City VARCHAR (30) NULL)

INSERT INTO NorthAmerica (CityID, Country, State, Province, City) VALUES (1, 'US', 'VT', ' ', 'Burlington')

INSERT INTO NorthAmerica (CityID, Country, State, Province, City) VALUES (2, 'CA', ' ', 'QU', 'Montreal')

INSERT INTO NorthAmerica (CityID, Country, State, Province, City) VALUES (3, 'US', 'CO', ' ', 'Denver')

INSERT INTO NorthAmerica (CityID, Country, State, Province, City) VALUES (4, 'US', 'CO', ' ', 'Boulder')

INSERT INTO NorthAmerica (CityID, Country, State, Province, City) VALUES (5, 'CA', ' ', 'AB', 'Edmonton')

-- CustomerList table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'CustomerList')
AND TYPE IN (N'U'))
DROP TABLE CustomerList
GO

CREATE TABLE CustomerList
(CustomerID INT NOT NULL,
Sex VARCHAR(5) NULL,
Age INT NULL,
Income INT NULL)

INSERT INTO CustomerList (CustomerID, Sex, Age, Income) VALUES (1, 'M', 55, 80000)

INSERT INTO CustomerList (CustomerID, Sex, Age, Income) VALUES (2, 'F', 25, 65000)

INSERT INTO CustomerList (CustomerID, Sex, Age, Income) VALUES (3, 'M', 35, 40000)

INSERT INTO CustomerList (CustomerID, Sex, Age, Income) VALUES (4, 'F', 42, 90000)

INSERT INTO CustomerList (CustomerID, Sex, Age, Income) VALUES (5, 'F', 27, 25000)

-- SongTitles table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'SongTitles')
AND TYPE IN (N'U'))
DROP TABLE SongTitles
GO

CREATE TABLE SongTitles
(SongID INT NOT NULL,
Artist VARCHAR(30) NULL,
Album VARCHAR(30) NULL,
Title VARCHAR(30) NULL)

INSERT INTO SongTitles (SongID, Artist, Album, Title) VALUES (1, 'The Beatles', 'Revolver', 'Yellow Submarine')

INSERT INTO SongTitles (SongID, Artist, Album, Title) VALUES (2, 'The Beatles', 'Revolver', 'Eleanor Rigby')

INSERT INTO SongTitles (SongID, Artist, Album, Title) VALUES (3, 'The Beatles', 'Abbey Road', 'Here Comes the Sun')

INSERT INTO SongTitles (SongID, Artist, Album, Title) VALUES (4, 'The Rolling Stones', 'Beggars Banquet', 'Sympathy for the Devil')

INSERT INTO SongTitles (SongID, Artist, Album, Title) VALUES (5, 'The Rolling Stones', 'Let It Bleed', 'Gimme Shelter')

INSERT INTO SongTitles (SongID, Artist, Album, Title) VALUES (6, 'Paul McCartney', 'Ram', 'Too Many People')

-- Fees table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Fees')
AND TYPE IN (N'U'))
DROP TABLE Fees
GO

CREATE TABLE Fees
(FeeID INT NOT NULL,
Student VARCHAR(30) NULL,
FeeType VARCHAR(30) NULL,
Fee INT NULL)

INSERT INTO Fees (FeeID, Student, FeeType, Fee) VALUES (1, 'Jose', 'Gym', 30)

INSERT INTO Fees (FeeID, Student, FeeType, Fee) VALUES (2, 'Jose', 'Lunch', 10)

INSERT INTO Fees (FeeID, Student, FeeType, Fee) VALUES (3, 'Jose', 'Trip', 8)

INSERT INTO Fees (FeeID, Student, FeeType, Fee) VALUES (4, 'Rama', 'Gym', 30)

INSERT INTO Fees (FeeID, Student, FeeType, Fee) VALUES (5, 'Julie', 'Lunch', 10)

-- Grades table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Grades')
AND TYPE IN (N'U'))
DROP TABLE Grades
GO

CREATE TABLE Grades
(GradeID INT NOT NULL,
Student VARCHAR(30) NULL,
GradeType VARCHAR(30) NULL,
Grade DECIMAL NULL,
YearInSchool INT NULL)

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (1, 'Isabella', 'Quiz', 92, 7)

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (2, 'Isabella', 'Quiz', 95, 7)

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (3, 'Isabella', 'Homework', 84, 7)

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (4, 'Hailey', 'Quiz', 62, 8)

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (5, 'Hailey', 'Quiz', 81, 8)

INSERT INTO Grades (GradeID, Student, GradeType, YearInSchool) VALUES (6, 'Hailey', 'Homework', 8)

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (7, 'Peter', 'Quiz', 58, 7)

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (8, 'Peter', 'Quiz', 74, 7)

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (9, 'Peter', 'Homework', 88, 7)



SELECT
Student AS 'Student',
GradeType AS 'Grade Type',
AVG(Grade) AS 'Average Grade'
FROM Grades
GROUP BY GradeType, Student
ORDER BY Student, GradeType


SELECT
Student AS 'Student',
GradeType AS 'Grade Type',
AVG(Grade) AS 'Average Grade'
FROM Grades
WHERE GradeType = 'Quiz'
GROUP BY Student, GradeType
HAVING AVG(Grade) >= 70
ORDER BY Student



-- Stocks table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Stocks')
AND TYPE IN (N'U'))
DROP TABLE Stocks
GO

CREATE TABLE Stocks
(StockSymbol VARCHAR(10) NOT NULL,
StockName VARCHAR(30) NULL,
Exchange VARCHAR(10) NULL,
PriceEarningsRatio INT NULL)

INSERT INTO Stocks (StockSymbol, StockName, Exchange, PriceEarningsRatio) VALUES ('AAPL', 'Apple Inc', 'NASDAQ', 14)

INSERT INTO Stocks (StockSymbol, StockName, Exchange, PriceEarningsRatio) VALUES ('AMZN', 'Amazon.com Inc', 'NASDAQ', 489)

INSERT INTO Stocks (StockSymbol, StockName, Exchange, PriceEarningsRatio) VALUES ('DIS', 'The Walt Disney Company', 'NYSE', 21)

INSERT INTO Stocks (StockSymbol, StockName, Exchange, PriceEarningsRatio) VALUES ('GE', 'General Electric Company', 'NYSE', 18)

INSERT INTO Stocks (StockSymbol, StockName, Exchange, PriceEarningsRatio) VALUES ('GOOG', 'Alphabet Inc', 'NASDAQ', 30)

INSERT INTO Stocks (StockSymbol, StockName, Exchange, PriceEarningsRatio) VALUES ('HSY', 'The Hershey Company', 'NYSE', 26)

INSERT INTO Stocks (StockSymbol, StockName, Exchange, PriceEarningsRatio) VALUES ('KRFT', 'Kraft Foods Inc', 'NYSE', 12)

INSERT INTO Stocks (StockSymbol, StockName, Exchange, PriceEarningsRatio) VALUES ('KO', 'The Coca-Cola Company', 'NYSE', 21)

INSERT INTO Stocks (StockSymbol, StockName, Exchange, PriceEarningsRatio) VALUES ('MCD', 'McDonalds Corporation', 'NYSE', 18)

INSERT INTO Stocks (StockSymbol, StockName, Exchange, PriceEarningsRatio) VALUES ('MMM', '3M Company', 'NYSE', 20)

INSERT INTO Stocks (StockSymbol, StockName, Exchange, PriceEarningsRatio) VALUES ('MSFT', 'Microsoft Corporation', 'NASDAQ', 15)

INSERT INTO Stocks (StockSymbol, StockName, Exchange, PriceEarningsRatio) VALUES ('ORCL', 'Oracle Corporation', 'NASDAQ', 17)

INSERT INTO Stocks (StockSymbol, StockName, Exchange, PriceEarningsRatio) VALUES ('SBUX', 'Starbucks Corporation', 'NASDAQ', 357)

INSERT INTO Stocks (StockSymbol, StockName, Exchange, PriceEarningsRatio) VALUES ('WBA', 'Walgreens Boots Alliance Inc', 'NYSE', 24)

INSERT INTO Stocks (StockSymbol, StockName, Exchange, PriceEarningsRatio) VALUES ('WMT', 'Wal-Mart Stores Inc', 'NYSE', 15)

-- Inventory table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Inventory')
AND TYPE IN (N'U'))
DROP TABLE Inventory
GO

CREATE TABLE Inventory
(InventoryID INT NOT NULL,
Category VARCHAR(30) NULL,
Subcategory VARCHAR(30) NULL,
Product VARCHAR(30) NULL,
Quantity INT NULL)

INSERT INTO Inventory (InventoryID, Category, Subcategory, Product, Quantity) VALUES (1, 'Furniture', 'Chair', 'Red Armchair', 3)

INSERT INTO Inventory (InventoryID, Category, Subcategory, Product, Quantity) VALUES (2, 'Furniture', 'Chair', 'Green Armchair', 2)

INSERT INTO Inventory (InventoryID, Category, Subcategory, Product, Quantity) VALUES (3, 'Furniture', 'Desk', 'Blue Computer Desk', 4)

INSERT INTO Inventory (InventoryID, Category, Subcategory, Product, Quantity) VALUES (4, 'Paper', 'Copy', 'White Copy Paper', 5)

INSERT INTO Inventory (InventoryID, Category, Subcategory, Product, Quantity) VALUES (5, 'Paper', 'Copy', 'Pink Copy Paper', 2)

INSERT INTO Inventory (InventoryID, Category, Subcategory, Product, Quantity) VALUES (6, 'Paper', 'Notebook', 'White Notebook Paper', 4)

-- SalesSumary table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'SalesSummary')
AND TYPE IN (N'U'))
DROP TABLE SalesSummary
GO

CREATE TABLE SalesSummary
(SalesDate DATE NULL,
CustomerID INT NULL,
State VARCHAR(10) NULL,
Channel VARCHAR(10) NULL,
SalesAmount INT NULL)

INSERT INTO SalesSummary (SalesDate, CustomerID, State, Channel, SalesAmount) VALUES ('2017-04-01', 101, 'NY', 'Internet', 50)

INSERT INTO SalesSummary (SalesDate, CustomerID, State, Channel, SalesAmount) VALUES ('2017-04-01', 102, 'NY', 'Retail', 30)

INSERT INTO SalesSummary (SalesDate, CustomerID, State, Channel, SalesAmount) VALUES ('2017-04-01', 103, 'VT', 'Internet', 120)

INSERT INTO SalesSummary (SalesDate, CustomerID, State, Channel, SalesAmount) VALUES ('2017-04-02', 145, 'VT', 'Retail', 90)

INSERT INTO SalesSummary (SalesDate, CustomerID, State, Channel, SalesAmount) VALUES ('2017-04-02', 180, 'NY', 'Retail', 300)

INSERT INTO SalesSummary (SalesDate, CustomerID, State, Channel, SalesAmount) VALUES ('2017-04-02', 181, 'VT', 'Internet', 130)

INSERT INTO SalesSummary (SalesDate, CustomerID, State, Channel, SalesAmount) VALUES ('2017-04-02', 182, 'NY', 'Internet', 520)

INSERT INTO SalesSummary (SalesDate, CustomerID, State, Channel, SalesAmount) VALUES ('2017-04-02', 184, 'NY', 'Retail', 80)


SELECT 
State,
Channel,
SUM(SalesAmount) AS 'Sales Amount',
GROUPING(State) AS 'State Grouping',
GROUPING(Channel) AS 'Channel Grouping'
FROM SalesSummary
GROUP BY CUBE(State, Channel)
ORDER BY State, Channel

SELECT
ISNULL(State,' ') AS 'State',
ISNULL(Channel, ' ') AS 'Channel',
SUM(SalesAmount) AS 'Sales Amount',
CASE WHEN GROUPING(State) = 1
AND GROUPING(Channel) = 1 THEN 'Grand Total'
WHEN GROUPING(State) = 1 
AND GROUPING(Channel) = 0 THEN 'Channel Subtotal'
WHEN GROUPING(State) = 0
AND GROUPING(Channel) = 1 THEN 'State Subtotal'
ELSE ' ' END AS 'Subtotal/Total'
FROM SalesSummary
GROUP BY CUBE(State, Channel)
ORDER BY
CASE 
WHEN GROUPING(State) = 0 AND GROUPING(Channel) = 0 THEN 1
WHEN GROUPING(State) = 0 AND GROUPING(Channel) = 1 THEN 2
WHEN GROUPING(State) = 1 AND GROUPING(Channel) = 0 THEN 3
ELSE 4
END


-- Orders table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Orders')
AND TYPE IN (N'U'))
DROP TABLE Orders
GO

CREATE TABLE Orders
(OrderID INT NOT NULL,
CustomerID INT NOT NULL,
OrderDate DATE NULL,
OrderAmount FLOAT NULL)

INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderAmount) VALUES (1, 1, '2016-09-01', 10)

INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderAmount) VALUES (2, 2, '2016-09-02', 12.5)

INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderAmount) VALUES (3, 2, '2016-09-03', 18)

INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderAmount) VALUES (4, 3, '2016-09-15', 20)

-- Refunds table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Refunds')
AND TYPE IN (N'U'))
DROP TABLE Refunds
GO

CREATE TABLE Refunds
(RefundID INT NOT NULL,
OrderID INT NULL,
RefundDate DATE NULL,
RefundAmount FLOAT NULL)

INSERT INTO Refunds (RefundID, OrderID, RefundDate, RefundAmount) VALUES (1, 1, '2016-09-02', 5)

INSERT INTO Refunds (RefundID, OrderID, RefundDate, RefundAmount) VALUES (2, 3, '2016-09-18', 18)

-- Ratings table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Ratings')
AND TYPE IN (N'U'))
DROP TABLE Ratings
GO

CREATE TABLE Ratings
(RatingID INT NOT NULL,
Rating VARCHAR(10) NULL,
RatingDescription VARCHAR(30) NULL)

INSERT INTO Ratings (RatingID, Rating, RatingDescription) VALUES (1, 'G', 'General Audiences')

INSERT INTO Ratings (RatingID, Rating, RatingDescription) VALUES (2, 'PG', 'Parental Guidance Suggested')

INSERT INTO Ratings (RatingID, Rating, RatingDescription) VALUES (3, 'PG-13', 'Parents Strongly Cautioned')

INSERT INTO Ratings (RatingID, Rating, RatingDescription) VALUES (4, 'R', 'Restricted')

INSERT INTO Ratings (RatingID, Rating, RatingDescription) VALUES (5, 'NC-17', 'Under 17 Not Admitted')

-- SizeInventory table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'SizeInventory')
AND TYPE IN (N'U'))
DROP TABLE SizeInventory
GO

CREATE TABLE SizeInventory
(SizeID INT NOT NULL,
Size VARCHAR(10) NULL)

INSERT INTO SizeInventory (SizeID, Size) VALUES (1, 'Small')

INSERT INTO SizeInventory (SizeID, Size) VALUES (2, 'Medium')

INSERT INTO SizeInventory (SizeID, Size) VALUES (3, 'Large')

-- ColorInventory table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'ColorInventory')
AND TYPE IN (N'U'))
DROP TABLE ColorInventory
GO

CREATE TABLE ColorInventory
(ColorID INT NOT NULL,
Color VARCHAR(10) NULL)

INSERT INTO ColorInventory (ColorID, Color) VALUES (1, 'Red')

INSERT INTO ColorInventory (ColorID, Color) VALUES (2, 'Blue')

INSERT INTO ColorInventory (ColorID, Color) VALUES (3, 'Green')

INSERT INTO ColorInventory (ColorID, Color) VALUES (4, 'Yellow')

-- SpecialDates table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'SpecialDates')
AND TYPE IN (N'U'))
DROP TABLE SpecialDates
GO

CREATE TABLE SpecialDates
(LastProcessDate DATE NULL,
CurrentFiscalYear INT NULL,
CurrentFiscalQuarter VARCHAR(10) NULL)

INSERT INTO SpecialDates (LastProcessDate, CurrentFiscalYear, CurrentFiscalQuarter) VALUES ('2016-09-15', 2016, 'Q3')

-- Personnel table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Personnel')
AND TYPE IN (N'U'))
DROP TABLE Personnel
GO

CREATE TABLE Personnel
(EmployeeID INT NOT NULL,
EmployeeName VARCHAR(30) NULL,
ManagerID INT NULL)

INSERT INTO Personnel (EmployeeID, EmployeeName) VALUES (1, 'Susan Carter')

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (2, 'Li Wang', 1)

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (3, 'Robert Baker', 1)

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (4, 'Scott Fielding', 1)

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (5, 'Carla Bender', 2)

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (6, 'Janet Brown', 2)

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (7, 'Jules Moreau', 3)

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (8, 'Amy Adamson', 4)

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (9, 'Jaideep Singh', 4)

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (10, 'Amelia Williams', 5)

-- Users table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Users')
AND TYPE IN (N'U'))
DROP TABLE Users
GO

CREATE TABLE Users
(UserID INT NOT NULL,
UserName VARCHAR(30) NULL)

INSERT INTO Users (UserID, UserName)
VALUES (1, 'Cecilia Rodriguez')

INSERT INTO Users (UserID, UserName)
VALUES (2, 'Elaine Bundy')

INSERT INTO Users (UserID, UserName)
VALUES (3, 'Rakesh Gupta')

INSERT INTO Users (UserID, UserName)
VALUES (4, 'April Waters')

-- Transactions table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Transactions')
AND TYPE IN (N'U'))
DROP TABLE Transactions
GO

CREATE TABLE Transactions
(TransactionID INT NOT NULL,
UserID INT NULL,
TransactionAmount FLOAT NULL,
TransactionType VARCHAR(10) NULL)

INSERT INTO Transactions (TransactionID, UserID, TransactionAmount, TransactionType)
VALUES (1, 1, 22.25, 'Cash')

INSERT INTO Transactions (TransactionID, UserID, TransactionAmount, TransactionType)
VALUES (2, 2, 11.75, 'Credit')

INSERT INTO Transactions (TransactionID, UserID, TransactionAmount, TransactionType)
VALUES (3, 2, 5, 'Credit')

INSERT INTO Transactions (TransactionID, UserID, TransactionAmount, TransactionType)
VALUES (4, 2, 8, 'Cash')

INSERT INTO Transactions (TransactionID, UserID, TransactionAmount, TransactionType)
VALUES (5, 3, 9.33, 'Credit')

INSERT INTO Transactions (TransactionID, UserID, TransactionAmount, TransactionType)
VALUES (6, 3, 10.11, 'Credit')

-- Returns table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Returns')
AND TYPE IN (N'U'))
DROP TABLE Returns
GO

CREATE TABLE Returns
(ReturnID INT NOT NULL,
CustomerID INT NOT NULL,
ReturnDate DATE NULL,
ReturnAmount FLOAT NULL)

INSERT INTO Returns (ReturnID, CustomerID, ReturnDate, ReturnAmount) VALUES (1, 1, '2016-09-10', 2)

INSERT INTO Returns (ReturnID, CustomerID, ReturnDate, ReturnAmount) VALUES (2, 2, '2016-09-15', 15)

INSERT INTO Returns (ReturnID, CustomerID, ReturnDate, ReturnAmount) VALUES (3, 3, '2016-09-28', 3)

-- Clients table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Clients')
AND TYPE IN (N'U'))
DROP TABLE Clients
GO

CREATE TABLE Clients
(ClientID INT IDENTITY NOT NULL,
FirstName VARCHAR(30) NULL,
LastName VARCHAR(30) NULL,
State VARCHAR(10) NULL)

INSERT INTO Clients (FirstName, LastName, State) VALUES ('Joyce', 'Bentley', 'TN')

INSERT INTO Clients (FirstName, LastName, State) VALUES ('Miguel', 'Ramirez', 'PA')

INSERT INTO Clients (FirstName, LastName, State) VALUES ('Ellen', 'Baker', 'OR')

-- NewClients table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'NewClients')
AND TYPE IN (N'U'))
DROP TABLE NewClients
GO

CREATE TABLE NewClients
(State VARCHAR(10) NULL,
Name1 VARCHAR(30) NULL,
Name2 VARCHAR(30) NULL)

INSERT INTO NewClients (State, Name1, Name2) VALUES ('RI', 'Roberto', 'Harris')

INSERT INTO NewClients (State, Name1, Name2) VALUES ('PA', 'Beata', 'Kowalski')

INSERT INTO NewClients (State, Name1, Name2) VALUES ('RI', 'Galina', 'Melnyk')

-- Vendors table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Vendors')
AND TYPE IN (N'U'))
DROP TABLE Vendors
GO

CREATE TABLE Vendors
(VendorID INT NOT NULL,
State VARCHAR(10) NULL,
Zip VARCHAR(10) NULL)

INSERT INTO Vendors (VendorID, State, Zip) VALUES (1, 'NY', '10605')

INSERT INTO Vendors (VendorID, State, Zip) VALUES (2, 'FL', '33431')

INSERT INTO Vendors (VendorID, State, Zip) VALUES (3, 'CA', '94704')

INSERT INTO Vendors (VendorID, State, Zip) VALUES (4, 'CO', '80302')

INSERT INTO Vendors (VendorID, State, Zip) VALUES (5, 'WY', '83001')




-- VendorTransactions table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'VendorTransactions')
AND TYPE IN (N'U'))
DROP TABLE VendorTransactions
GO

CREATE TABLE VendorTransactions
(TransactionID INT NOT NULL,
VendorID INT NULL,
State VARCHAR(10) NULL,
Zip VARCHAR(10) NULL)

INSERT INTO VendorTransactions (TransactionID, VendorID, State, Zip) VALUES (1, 1, 'NJ', '07030')

INSERT INTO VendorTransactions (TransactionID, VendorID, State, Zip) VALUES (2, 2, 'FL', '33139')

INSERT INTO VendorTransactions (TransactionID, VendorID, State, Zip) VALUES (3, 5, 'OR', '97401')

INSERT INTO Clients
(FirstName, LastName, State)
VALUES
('Claudia', 'Davis', 'OH'),
('Ingrid','xyzz', 'CA')

INSERT INTO Clients
(FirstName, LastName)
VALUES
('Deepak', 'Gupta')
INSERT INTO Clients
(FirstName, LastName, State)
SELECT
Name1,
Name2,
State
FROM NewClients
WHERE State = 'RI'

DELETE
FROM Clients
WHERE State = 'RI'

SELECT
COUNT (*)
FROM Clients
WHERE State = 'RI'
UPDATE Clients
SET LastName = 'Barrow',
State = 'WI'
WHERE ClientID = 1

UPDATE Vendors
SET Vendors.State = 
(SELECT VendorTransactions.State
FROM VendorTransactions
WHERE Vendors.VendorID = VendorTransactions.VendorID),
Vendors.Zip = 
(SELECT VendorTransactions.Zip
FROM VendorTransactions
WHERE Vendors.VendorID = VendorTransactions.VendorID)
WHERE EXISTS
(SELECT *
FROM VendorTransactions
WHERE Vendors.VendorID = VendorTransactions.VendorID)


-- RelatedTable table:

IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'RelatedTable')
AND TYPE IN (N'U'))
DROP TABLE RelatedTable
GO

CREATE TABLE RelatedTable
(FirstColumn INT NOT NULL PRIMARY KEY)
CREATE TABLE MyTable
(ColumnOne INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
ColumnTwo INT NULL
REFERENCES RelatedTable (FirstColumn)
ON DELETE SET NULL,
ColumnThree VARCHAR(25) NULL,
ColumnFour FLOAT NULL DEFAULT (10))

ALTER TABLE MyTable
DROP COLUMN ColumnThree

CREATE INDEX Index2
ON MyTable(ColumnFour)

DROP INDEX Index2
ON MyTable

DROP TABLE MyTable