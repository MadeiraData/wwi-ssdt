CREATE VIEW [WebApi].[SalesOrderLines]
AS
SELECT	ol.OrderLineID, ol.OrderID, ol.Description, ol.Quantity, ol.UnitPrice, ol.TaxRate, ol.PickingCompletedWhen,
		ProductName = si.StockItemName, si.Brand, si.Size, c.ColorName, pt.PackageTypeName
FROM	Sales.OrderLines ol
		INNER JOIN Warehouse.StockItems si
			ON ol.StockItemID = si.StockItemID
			INNER JOIN Warehouse.Colors c
				ON c.ColorID = si.ColorID
		INNER JOIN Warehouse.PackageTypes pt
			ON ol.PackageTypeID = pt.PackageTypeID
		

