CREATE PROCEDURE [WebApi].[DeleteStockItem](@StockItemID int)
WITH EXECUTE AS OWNER
AS BEGIN
	DELETE Warehouse.StockItems
	WHERE StockItemID = @StockItemID;
END