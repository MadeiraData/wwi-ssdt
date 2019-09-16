CREATE PROCEDURE [WebApi].[InsertSupplierCategoriesFromJson](@SupplierCategories NVARCHAR(MAX), @UserID int)
WITH EXECUTE AS OWNER
AS BEGIN
	INSERT INTO Purchasing.SupplierCategories(SupplierCategoryName,LastEditedBy)
			OUTPUT  inserted.SupplierCategoryID
			SELECT SupplierCategoryName,@UserID
			FROM OPENJSON(@SupplierCategories)
				WITH (SupplierCategoryName nvarchar(50))
END