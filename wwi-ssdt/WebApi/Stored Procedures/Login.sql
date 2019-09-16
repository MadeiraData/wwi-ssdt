CREATE PROCEDURE [WebApi].[Login](@LogonName nvarchar(256), @Password nvarchar(256))
WITH EXECUTE AS OWNER
AS BEGIN
	select  PersonID, PreferredName, IsSalesperson, IsEmployee,
        Territory = JSON_VALUE(CustomFields,'$.PrimarySalesTerritory')
	from Application.People
	where IsPermittedToLogon = 1
	and LogonName = @LogonName
	--and HashedPassword = HASHBYTES(N'SHA2_256', @Password)",
END