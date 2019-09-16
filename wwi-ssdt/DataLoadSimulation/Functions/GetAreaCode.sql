
CREATE FUNCTION [DataLoadSimulation].[GetAreaCode]
(
    @StateProvinceCode NVARCHAR(4)
)
RETURNS NVARCHAR(4)
WITH EXECUTE AS OWNER
AS
BEGIN
/*
Notes:
  Retrieves the area code from the area code table.
  This is used as part of data generation.

Usage:
  DECLARE @myAreaCode NVARCHAR(4)
  SET @myAreaCode = DataLoadSimulation.GetAreaCode ('AL')
  SELECT @myAreaCode

*/
  DECLARE @AreaCode AS NVARCHAR(4)

  SELECT TOP 1
         @AreaCode = ac.[AreaCode]
    FROM [DataLoadSimulation].[AreaCode] AS ac
   WHERE ac.StateProvinceCode = @StateProvinceCode;

  RETURN @AreaCode;
END;

