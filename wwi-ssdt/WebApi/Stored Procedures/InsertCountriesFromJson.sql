CREATE PROCEDURE [WebApi].[InsertCountriesFromJson](@Countries NVARCHAR(MAX), @UserID int)
WITH EXECUTE AS OWNER
AS BEGIN
	INSERT INTO Application.Countries(CountryName,FormalName,IsoAlpha3Code,IsoNumericCode,CountryType,LatestRecordedPopulation,Continent,Region,Subregion, LastEditedBy)
	OUTPUT  inserted.CountryID
	SELECT CountryName,FormalName,IsoAlpha3Code,IsoNumericCode,CountryType,LatestRecordedPopulation,Continent,Region,Subregion, @UserID
	FROM OPENJSON (@Countries)
		WITH (
			CountryName nvarchar(60) N'strict $.CountryName',
			FormalName nvarchar(60) N'strict $.FormalName',
			IsoAlpha3Code nvarchar(3),
			IsoNumericCode int,
			CountryType nvarchar(20),
			LatestRecordedPopulation bigint,
			Continent nvarchar(30) N'strict $.Continent',
			Region nvarchar(30) N'strict $.Region',
			Subregion nvarchar(30) N'strict $.Subregion')
END