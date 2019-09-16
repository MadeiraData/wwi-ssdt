CREATE PROCEDURE [WebApi].[InsertStockItemsFromJson](@StockItems NVARCHAR(MAX),@UserID int)
WITH EXECUTE AS OWNER
AS BEGIN
	INSERT INTO Warehouse.StockItems(StockItemName,SupplierID,ColorID,UnitPackageID,OuterPackageID,Brand,Size,LeadTimeDays,QuantityPerOuter,IsChillerStock,Barcode,TaxRate,UnitPrice,RecommendedRetailPrice,TypicalWeightPerUnit,MarketingComments,InternalComments,Photo,CustomFields,LastEditedBy)
	OUTPUT inserted.StockItemID
	SELECT StockItemName,SupplierID,ColorID,UnitPackageID,OuterPackageID,Brand,Size,LeadTimeDays,QuantityPerOuter,IsChillerStock,Barcode,TaxRate,UnitPrice,RecommendedRetailPrice,TypicalWeightPerUnit,MarketingComments,InternalComments,Photo,CustomFields,@UserID
	FROM OPENJSON (@StockItems)
		WITH (
			StockItemName nvarchar(100) N'strict $.StockItemName',
			SupplierID int N'strict $.SupplierID',
			ColorID int,
			UnitPackageID int N'strict $.UnitPackageID',
			OuterPackageID int N'strict $.OuterPackageID',
			Brand nvarchar(50),
			Size nvarchar(20),
			LeadTimeDays int N'strict $.LeadTimeDays',
			QuantityPerOuter int N'strict $.QuantityPerOuter',
			IsChillerStock bit N'strict $.IsChillerStock',
			Barcode nvarchar(50),
			TaxRate decimal(18,3) N'strict $.TaxRate',
			UnitPrice decimal(18,2) N'strict $.UnitPrice',
			RecommendedRetailPrice decimal(18,2),
			TypicalWeightPerUnit decimal(18,3) N'strict $.TypicalWeightPerUnit',
			MarketingComments nvarchar(MAX),
			InternalComments nvarchar(MAX),
			Photo varbinary(MAX),
			CustomFields nvarchar(MAX) AS JSON)
END