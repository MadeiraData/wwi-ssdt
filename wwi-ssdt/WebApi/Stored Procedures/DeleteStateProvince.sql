CREATE PROCEDURE [WebApi].[DeleteStateProvince](@StateProvinceID int)
WITH EXECUTE AS OWNER
AS BEGIN
	DELETE Application.StateProvinces
	WHERE StateProvinceID = @StateProvinceID;
END
