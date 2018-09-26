CREATE PROCEDURE RetriveDataToPerformOperation
      @Action VARCHAR(10)
      ,@Id INT = NULL
      ,@Name VARCHAR(100) = NULL
      ,@Description VARCHAR(100) = NULL
	  ,@Price INT = NULL
	  ,@URL VARCHAR(100) = NULL
	  

AS
BEGIN
      SET NOCOUNT ON;

     --SELECT Individual

	  IF @Action = 'SELECTONE'
      BEGIN
            SELECT Id,Name,Price,URL,Description
            FROM Images
			where Id = @Id
      END



      --SELECT
    IF @Action = 'SELECT'
      BEGIN
            SELECT Id,Name,Price,URL,Description
            FROM Images
      END
 
      --INSERT
    IF @Action = 'INSERT'
      BEGIN
            INSERT INTO Images(Name,Price,URL,Description)
            VALUES (@Name,@Price,@URL,@Description)
 
           SELECT Id,Name,Price,URL,Description
            FROM Images
			
      END
 
      --UPDATE
    IF @Action = 'UPDATE'
      BEGIN
            UPDATE Images
            SET Name = @Name,Price = @Price,URL = @URL,Description = @Description

            WHERE Id = @Id
 
             SELECT Id,Name,Price,URL,Description
            FROM Images
			
      END
 
      --DELETE
    IF @Action = 'DELETE'
      BEGIN
            DELETE FROM Images
            WHERE Id = @Id
 
          SELECT Id,Name,Price,URL,Description
            FROM Images
			
      END
END

