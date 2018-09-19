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

/*

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

*/


exec InsertValues 
@action = 'insert',
--@Id =0,
@StockSymbol = 'AAPL',
@StockName = 'Apple Inc',
@Exchange='NASDAQ',
@PriceEarningsRatio =14