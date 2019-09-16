	CREATE TABLE DataLoadSimulation.SeasonVariation
	(
		[Year] int NOT NULL,
		[Season] smallint NOT NULL,
		[YearlyVariation] float NOT NULL,
		[SeasonalVariation] float NOT NULL,
		CONSTRAINT PK_DataLoadSimulation_SeasonVariation PRIMARY KEY
			(Year, Season)
	)