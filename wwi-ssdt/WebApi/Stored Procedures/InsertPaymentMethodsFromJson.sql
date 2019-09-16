CREATE PROCEDURE [WebApi].[InsertPaymentMethodsFromJson](@PaymentMethods NVARCHAR(MAX), @UserID int)
WITH EXECUTE AS OWNER
AS BEGIN
	INSERT INTO Application.PaymentMethods(PaymentMethodName,LastEditedBy)
			OUTPUT  inserted.PaymentMethodID
			SELECT PaymentMethodName,@UserID
			FROM OPENJSON(@PaymentMethods)
				WITH (PaymentMethodName nvarchar(50))
END