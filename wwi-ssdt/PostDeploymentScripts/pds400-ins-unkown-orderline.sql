-- Inserting one OrderLine in "Unknown" package needed to demonstrate parameter sniffing and FORCE LAST GOOD PLAN.
PRINT 'Inserting single OrderLine in "Unknown" package.'
GO

BEGIN TRAN;

IF ( 0 = (SELECT COUNT(*) FROM Sales.OrderLines) )
	RAISERROR('OrderLines must be loaded into the table before executing this script', 12, 5);

-- Insert single order line record in package type = 0
-- This is prerequisite for Automatic tuning demo
INSERT INTO [Sales].[OrderLines] (OrderID, StockItemID, Description, PackageTypeID, Quantity, UnitPrice, TaxRate, PickedQuantity, LastEditedBy)
SELECT TOP 1 OrderID, StockItemID, 'Unique OrderLine for Unknown package type', 0,  Quantity, UnitPrice, TaxRate, PickedQuantity, LastEditedBy
FROM Sales.OrderLines
WHERE Quantity IS NOT NULL AND UnitPrice IS NOT NULL
ORDER BY NEWID();

COMMIT;
