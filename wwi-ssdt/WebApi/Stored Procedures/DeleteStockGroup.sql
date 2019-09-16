CREATE PROCEDURE [WebApi].[DeleteStockGroup](@StockGroupID int)
WITH EXECUTE AS OWNER
AS BEGIN
	DELETE Warehouse.StockGroups
	WHERE StockGroupID = @StockGroupID
END