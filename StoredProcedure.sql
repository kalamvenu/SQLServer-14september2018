IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'Stocks')
AND TYPE IN (N'U'))
DROP TABLE Stocks
GO

CREATE TABLE Stocks
(Id INT  NULL,
StockSymbol VARCHAR(10) NOT NULL,
StockName VARCHAR(30) NULL,
Exchange VARCHAR(10) NULL,
PriceEarningsRatio INT NULL)



create procedure InsertValues3
(
@action VARCHAR(10),
@Id INT  NULL,
@StockSymbol VARCHAR(10)  NULL,
@StockName VARCHAR(30) NULL,
@Exchange VARCHAR(10) NULL,
@PriceEarningsRatio INT NULL)


as
begin
set nocount on;
      if @action = 'insert'
	  begin
	      if not exists(select * from Stocks where StockName=@StockName)
		  begin		  
		  if not(@PriceEarningsRatio>500)
		  begin
		    insert into Stocks(Id,StockSymbol,StockName,Exchange,PriceEarningsRatio) values(@Id,@StockSymbol,@StockName,@Exchange,@PriceEarningsRatio) 			 
		 end
		  end		 
	  end 
	    if @action = 'update'
	  begin
	      if not exists(select * from Stocks where StockName=@StockName)
		  begin		 
		    update Stocks
		  set 
		  
		  StockSymbol=@StockSymbol,
		  StockName=@StockName,
		  Exchange=@Exchange,
		  PriceEarningsRatio=@PriceEarningsRatio
		  where Id = @Id 
		  end		  
	  end 

	   if @action = 'delete'
	  begin
	  
	      if ((select count(*) from Stocks)>2)
		  begin		 
		  delete  from Stocks where Id = @Id
		  end
	  end 
	  	   if @action = 'view'
	  begin
	    select * from Stocks 
	  end 
end

exec InsertValues3
@action = 'view',
@Id =0,
@StockSymbol = '',
@StockName = '',
@Exchange='',
@PriceEarningsRatio=0

exec InsertValues3 
@action = 'insert',
@Id=8,
@StockSymbol = 'j',
@StockName = 'j',
@Exchange='j',
@PriceEarningsRatio =7

exec InsertValues3 
@action = 'update',
@Id=0,
@StockSymbol = '1',
@StockName = 'a',
@Exchange='0',
@PriceEarningsRatio =0

exec InsertValues3 
@action = 'delete',
@Id=6,
@StockSymbol = '',
@StockName = '',
@Exchange='',
@PriceEarningsRatio =0