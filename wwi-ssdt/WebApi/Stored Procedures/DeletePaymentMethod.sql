CREATE PROCEDURE [WebApi].[DeletePaymentMethod](@PaymentMethodID int)
WITH EXECUTE AS OWNER
AS BEGIN
	DELETE Application.PaymentMethods
	WHERE PaymentMethodID = @PaymentMethodID
END