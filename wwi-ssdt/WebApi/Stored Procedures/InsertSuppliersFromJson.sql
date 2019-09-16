CREATE PROCEDURE [WebApi].[InsertSuppliersFromJson](@Suppliers NVARCHAR(MAX), @UserID int)
WITH EXECUTE AS OWNER
AS BEGIN
	INSERT INTO Purchasing.Suppliers(SupplierName,SupplierCategoryID,PrimaryContactPersonID,AlternateContactPersonID,DeliveryMethodID,DeliveryCityID,PostalCityID,SupplierReference,BankAccountName,BankAccountBranch,BankAccountCode,BankAccountNumber,BankInternationalCode,PaymentDays,InternalComments,PhoneNumber,FaxNumber,WebsiteURL,DeliveryAddressLine1,DeliveryAddressLine2,DeliveryPostalCode,PostalAddressLine1,PostalAddressLine2,PostalPostalCode, LastEditedBy)
	OUTPUT  inserted.SupplierID
	SELECT SupplierName,SupplierCategoryID,PrimaryContactPersonID,AlternateContactPersonID,DeliveryMethodID,DeliveryCityID,PostalCityID,SupplierReference,BankAccountName,BankAccountBranch,BankAccountCode,BankAccountNumber,BankInternationalCode,PaymentDays,InternalComments,PhoneNumber,FaxNumber,WebsiteURL,DeliveryAddressLine1,DeliveryAddressLine2,DeliveryPostalCode,PostalAddressLine1,PostalAddressLine2,PostalPostalCode, @UserID
	FROM OPENJSON (@Suppliers)
		WITH (
			SupplierName nvarchar(100) N'strict $.SupplierName',
			SupplierCategoryID int N'strict $.SupplierCategoryID',
			PrimaryContactPersonID int N'strict $.PrimaryContactPersonID',
			AlternateContactPersonID int N'strict $.AlternateContactPersonID',
			DeliveryMethodID int,
			DeliveryCityID int N'strict $.DeliveryCityID',
			PostalCityID int N'strict $.PostalCityID',
			SupplierReference nvarchar(20),
			BankAccountName nvarchar(50),
			BankAccountBranch nvarchar(50),
			BankAccountCode nvarchar(20),
			BankAccountNumber nvarchar(20),
			BankInternationalCode nvarchar(20),
			PaymentDays int N'strict $.PaymentDays',
			InternalComments nvarchar(MAX),
			PhoneNumber nvarchar(20) N'strict $.PhoneNumber',
			FaxNumber nvarchar(20) N'strict $.FaxNumber',
			WebsiteURL nvarchar(256) N'strict $.WebsiteURL',
			DeliveryAddressLine1 nvarchar(60) N'strict $.DeliveryAddressLine1',
			DeliveryAddressLine2 nvarchar(60),
			DeliveryPostalCode nvarchar(10) N'strict $.DeliveryPostalCode',
			PostalAddressLine1 nvarchar(60) N'strict $.PostalAddressLine1',
			PostalAddressLine2 nvarchar(60),
			PostalPostalCode nvarchar(10) N'strict $.PostalPostalCode')
END
GO