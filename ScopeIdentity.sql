CREATE TABLE Contacts
(
FirstName VARCHAR(40),
LastName VARCHAR(40),
DateOfBirth DATE,
AllowContactByPhone BIT,
Note VARCHAR(200),
uniqId int identity(1,1)
)

declare ContactId INT output;

EXEC dbo.InsertContact 'Jo', 'Beasle', '1959-10-09', 4;

EXEC dbo.InsertContact
@FirstName = 'Michael',
@LastName = 'Stipe',
@DateOfBirth = '1960-01-04',
@AllowContactByPhone = 0;



CREATE PROCEDURE InsertContact
(
@FirstName VARCHAR(40),
@LastName VARCHAR(40),
@DateOfBirth DATE,
@AllowContactByPhone BIT = 0,
@Note VARCHAR(200) = NULL,
@ContactId INT = 0 OUTPUT
)
AS
BEGIN
SET NOCOUNT ON;
BEGIN TRANSACTION;
INSERT INTO Contacts (FirstName, LastName, DateOfBirth, AllowContactByPhone) VALUES (
@FirstName, @LastName, @DateOfBirth, @AllowContactByPhone);
SELECT @ContactId = SCOPE_IDENTITY();
PRINT 'Contact ID inserted: ' + CONVERT(VARCHAR(20), @ContactId);
-- Insert a note if provided
IF (COALESCE(@Note, '') != '')
BEGIN
INSERT INTO OutScope (CustomerId, Note) VALUES (@ContactId, @Note);
PRINT 'Note inserted';
END
COMMIT TRANSACTION;
SELECT @ContactId AS ContactId;
SET NOCOUNT OFF;
END;
