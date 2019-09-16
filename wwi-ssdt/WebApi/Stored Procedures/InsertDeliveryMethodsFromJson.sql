CREATE PROCEDURE [WebApi].[InsertDeliveryMethodsFromJson](@DeliveryMethods NVARCHAR(MAX), @UserID int)
WITH EXECUTE AS OWNER
AS BEGIN
	INSERT INTO Application.DeliveryMethods(DeliveryMethodName,LastEditedBy)
			OUTPUT  inserted.DeliveryMethodID
			SELECT DeliveryMethodName,@UserID
			FROM OPENJSON(@DeliveryMethods)
				WITH (DeliveryMethodName nvarchar(50))
END