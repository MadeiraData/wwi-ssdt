CREATE PROCEDURE [WebApi].[InsertCustomersFromJson](@Customers NVARCHAR(MAX), @UserID int)
WITH EXECUTE AS OWNER
AS BEGIN
	INSERT INTO Sales.Customers(CustomerName,BillToCustomerID,CustomerCategoryID,BuyingGroupID,PrimaryContactPersonID,AlternateContactPersonID,DeliveryMethodID,DeliveryCityID,PostalCityID,CreditLimit,AccountOpenedDate,StandardDiscountPercentage,IsStatementSent,IsOnCreditHold,PaymentDays,PhoneNumber,FaxNumber,DeliveryRun,RunPosition,WebsiteURL,DeliveryAddressLine1,DeliveryAddressLine2,DeliveryPostalCode,PostalAddressLine1,PostalAddressLine2,PostalPostalCode,LastEditedBy)
	OUTPUT  inserted.CustomerID
	SELECT CustomerName,BillToCustomerID,CustomerCategoryID,BuyingGroupID,PrimaryContactPersonID,AlternateContactPersonID,DeliveryMethodID,DeliveryCityID,PostalCityID,CreditLimit,AccountOpenedDate,StandardDiscountPercentage,IsStatementSent,IsOnCreditHold,PaymentDays,PhoneNumber,FaxNumber,DeliveryRun,RunPosition,WebsiteURL,DeliveryAddressLine1,DeliveryAddressLine2,DeliveryPostalCode,PostalAddressLine1,PostalAddressLine2,PostalPostalCode,@UserID
	FROM OPENJSON (@Customers)
		WITH (
			CustomerName nvarchar(100) N'strict $.CustomerName',
			BillToCustomerID int N'strict $.BillToCustomerID',
			CustomerCategoryID int N'strict $.CustomerCategoryID',
			BuyingGroupID int,
			PrimaryContactPersonID int N'strict $.PrimaryContactPersonID',
			AlternateContactPersonID int,
			DeliveryMethodID int N'strict $.DeliveryMethodID',
			DeliveryCityID int N'strict $.DeliveryCityID',
			PostalCityID int N'strict $.PostalCityID',
			CreditLimit decimal(18,2),
			AccountOpenedDate date N'strict $.AccountOpenedDate',
			StandardDiscountPercentage decimal(18,3) N'strict $.StandardDiscountPercentage',
			IsStatementSent bit N'strict $.IsStatementSent',
			IsOnCreditHold bit N'strict $.IsOnCreditHold',
			PaymentDays int N'strict $.PaymentDays',
			PhoneNumber nvarchar(20) N'strict $.PhoneNumber',
			FaxNumber nvarchar(20) N'strict $.FaxNumber',
			DeliveryRun nvarchar(5),
			RunPosition nvarchar(5),
			WebsiteURL nvarchar(256) N'strict $.WebsiteURL',
			DeliveryAddressLine1 nvarchar(60) N'strict $.DeliveryAddressLine1',
			DeliveryAddressLine2 nvarchar(60),
			DeliveryPostalCode nvarchar(10) N'strict $.DeliveryPostalCode',
			PostalAddressLine1 nvarchar(60) N'strict $.PostalAddressLine1',
			PostalAddressLine2 nvarchar(60),
			PostalPostalCode nvarchar(10) N'strict $.PostalPostalCode')
END