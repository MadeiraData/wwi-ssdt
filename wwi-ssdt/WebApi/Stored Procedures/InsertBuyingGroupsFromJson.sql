CREATE PROCEDURE [WebApi].[InsertBuyingGroupsFromJson](@BuyingGroups NVARCHAR(MAX), @UserID int)
WITH EXECUTE AS OWNER
AS BEGIN
	INSERT INTO Sales.BuyingGroups(BuyingGroupName,LastEditedBy)
			OUTPUT  inserted.BuyingGroupID
			SELECT BuyingGroupName,@UserID
			FROM OPENJSON(@BuyingGroups)
				WITH (BuyingGroupName nvarchar(50))
END