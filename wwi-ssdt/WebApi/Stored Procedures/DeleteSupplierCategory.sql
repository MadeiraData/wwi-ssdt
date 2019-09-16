CREATE PROCEDURE [WebApi].[DeleteSupplierCategory](@SupplierCategoryID int)
WITH EXECUTE AS OWNER
AS BEGIN
	DELETE Purchasing.SupplierCategories
	WHERE SupplierCategoryID = @SupplierCategoryID
END