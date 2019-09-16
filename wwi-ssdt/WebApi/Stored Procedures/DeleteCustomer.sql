CREATE PROCEDURE [WebApi].[DeleteCustomer](@CustomerID int)
WITH EXECUTE AS OWNER
AS BEGIN
	DELETE Sales.Customers
	WHERE CustomerID = @CustomerID;
END