CREATE PROCEDURE [WebApi].[InsertColorsFromJson](@Colors NVARCHAR(MAX), @UserID int)
WITH EXECUTE AS OWNER
AS BEGIN
	INSERT INTO Warehouse.Colors(ColorName,LastEditedBy)
			OUTPUT  inserted.ColorID
			SELECT ColorName,@UserID
			FROM OPENJSON(@Colors)
				WITH (ColorName nvarchar(50))
END