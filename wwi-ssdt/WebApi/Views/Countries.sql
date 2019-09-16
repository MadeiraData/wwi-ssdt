CREATE VIEW [WebApi].[Countries]
AS
SELECT CountryID,CountryName,FormalName,IsoAlpha3Code,IsoNumericCode,CountryType,LatestRecordedPopulation,Continent,Region,Subregion
FROM Application.Countries