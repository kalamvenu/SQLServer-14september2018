IF EXISTS
(SELECT * FROM sys.objects
WHERE OBJECT_ID = OBJECT_ID (N'OutScope')
AND TYPE IN (N'U'))
DROP TABLE OutScope
GO

CREATE TABLE OutScope
(
CustomerId int ,
FirstName VARCHAR(10) NOT NULL,
LastName VARCHAR(30) NULL,
Note VARCHAR(10) NULL)

declare @Id INT;

exec ScopeOut
@FirstName = 'xyz',
@LastName = 'abc' ,
@Note = null,
@Id output; 

select @Id

create procedure ScopeOut
(
@FirstName VARCHAR(10)  NULL,
@LastName VARCHAR(30) NULL,
@Note VARCHAR(10) NULL,
@Id INT = 0 output)
as
begin

set nocount on;
print 'this is sp'
begin transaction;

insert into OutScope(FirstName,LastName) values(@FirstName,@LastName)

set @Id = scope_identity()

commit transaction;
end
