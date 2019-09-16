CREATE PROCEDURE [WebApi].[InsertCitiesFromJson](@Cities NVARCHAR(MAX), @UserID int)
WITH EXECUTE AS OWNER
AS BEGIN
	INSERT INTO Application.Cities(CityName,StateProvinceID,LatestRecordedPopulation,LastEditedBy)
			OUTPUT  inserted.CityID
			SELECT CityName,StateProvinceID,LatestRecordedPopulation,@UserID
			FROM OPENJSON(@Cities)
				WITH (
					CityName nvarchar(50) N'strict $.CityName',
					StateProvinceID int N'strict $.StateProvinceID',
					LatestRecordedPopulation bigint)
END