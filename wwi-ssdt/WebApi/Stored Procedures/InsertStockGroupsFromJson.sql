CREATE PROCEDURE [WebApi].[InsertStockGroupsFromJson](@StockGroups NVARCHAR(MAX), @UserID int)
WITH EXECUTE AS OWNER
AS BEGIN
	INSERT INTO Warehouse.StockGroups(StockGroupName,LastEditedBy)
			OUTPUT  inserted.StockGroupID
			SELECT StockGroupName,@UserID
			FROM OPENJSON(@StockGroups)
				WITH (StockGroupName nvarchar(50))
END