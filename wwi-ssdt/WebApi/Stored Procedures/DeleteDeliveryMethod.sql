CREATE PROCEDURE [WebApi].[DeleteDeliveryMethod](@DeliveryMethodID int)
WITH EXECUTE AS OWNER
AS BEGIN
	DELETE Application.DeliveryMethods
	WHERE DeliveryMethodID = @DeliveryMethodID
END