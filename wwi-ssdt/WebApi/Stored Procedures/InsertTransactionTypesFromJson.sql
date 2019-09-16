CREATE PROCEDURE [WebApi].[InsertTransactionTypesFromJson](@TransactionTypes NVARCHAR(MAX), @UserID int)
WITH EXECUTE AS OWNER
AS BEGIN
	INSERT INTO Application.TransactionTypes(TransactionTypeName,LastEditedBy)
			OUTPUT  inserted.TransactionTypeID
			SELECT TransactionTypeName,@UserID
			FROM OPENJSON(@TransactionTypes)
				WITH (TransactionTypeName nvarchar(50))
END