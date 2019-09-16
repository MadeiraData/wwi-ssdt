-- NOTE: This script should be moved to MakeTemporalChanges procedure, but currently it doesn't work there.
-- jovanpop creating a separate file here.
-- @TODO: Investigate how to move it there.

PRINT N'Updating StockItems history...'
GO
EXEC DataloadSimulation.DeactivatetemporalTablesBeforeDataLoad;
GO
UPDATE Warehouse.StockItems_Archive
SET UnitPrice = s.UnitPrice * (1 - .05 *(DATEDIFF(DAY, sa.ValidFrom, GETDATE())/365 )),
        RecommendedRetailPrice = s.RecommendedRetailPrice * (1 - .03 *(DATEDIFF(DAY, sa.ValidFrom, GETDATE())/365 )),
        TaxRate = s.TaxRate * (1 + .02 *(DATEDIFF(DAY, sa.ValidFrom, GETDATE())/365 )),
        QuantityPerOuter = CEILING(s.QuantityPerOuter * (1 + .05 *(DATEDIFF(DAY, sa.ValidFrom, GETDATE())/365 ))),
        LeadTimeDays = CEILING(s.LeadTimeDays * (1 + .03 *(DATEDIFF(DAY, sa.ValidFrom, GETDATE())/365 ))),
        TypicalWeightPerUnit = CEILING(s.TypicalWeightPerUnit * (1 + .02 *(DATEDIFF(DAY, sa.ValidFrom, GETDATE())/365 )))
    FROM Warehouse.StockItems_Archive sa
		JOIN Warehouse.StockItems s
			ON sa.StockItemID = s.StockItemID;
GO
EXEC DataloadSimulation.ReActivatetemporalTablesAfterDataLoad;
GO