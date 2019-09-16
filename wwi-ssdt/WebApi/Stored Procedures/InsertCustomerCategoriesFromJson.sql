CREATE PROCEDURE [WebApi].[InsertCustomerCategoriesFromJson](@CustomerCategories NVARCHAR(MAX), @UserID int)
WITH EXECUTE AS OWNER
AS BEGIN
	INSERT INTO Sales.CustomerCategories(CustomerCategoryName,LastEditedBy)
			OUTPUT  inserted.CustomerCategoryID
			SELECT CustomerCategoryName,@UserID
			FROM OPENJSON(@CustomerCategories)
				WITH (CustomerCategoryName nvarchar(50))
END