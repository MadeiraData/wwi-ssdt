CREATE PROCEDURE [WebApi].[InsertPackageTypesFromJson](@PackageTypes NVARCHAR(MAX), @UserID int)
WITH EXECUTE AS OWNER
AS BEGIN
	INSERT INTO Warehouse.PackageTypes(PackageTypeName,LastEditedBy)
			OUTPUT  inserted.PackageTypeID
			SELECT PackageTypeName,@UserID
			FROM OPENJSON(@PackageTypes)
				WITH (PackageTypeName nvarchar(50))
END