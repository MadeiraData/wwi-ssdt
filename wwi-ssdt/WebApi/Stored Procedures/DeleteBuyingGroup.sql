CREATE PROCEDURE [WebApi].[DeleteBuyingGroup](@BuyingGroupID int)
WITH EXECUTE AS OWNER
AS BEGIN
	DELETE Sales.BuyingGroups
	WHERE BuyingGroupID = @BuyingGroupID
END