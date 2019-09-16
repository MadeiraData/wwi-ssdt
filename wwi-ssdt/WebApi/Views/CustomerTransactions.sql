CREATE VIEW [WebApi].[CustomerTransactions]
AS
SELECT ct.CustomerTransactionID, ct.TransactionDate, ct.AmountExcludingTax, ct.TaxAmount, ct.TransactionAmount, ct.OutstandingBalance, ct.FinalizationDate, ct.IsFinalized,
		c.CustomerName, tt.TransactionTypeName, i.InvoiceDate, i.CustomerPurchaseOrderNumber, pm.PaymentMethodName,
		ct.CustomerID, ct.TransactionTypeID, ct.InvoiceID, ct.PaymentMethodID
FROM Sales.CustomerTransactions AS ct
		JOIN Sales.Customers AS c ON ct.CustomerID = c.CustomerID
		JOIN Sales.Invoices AS i ON ct.InvoiceID = i.InvoiceID
		LEFT OUTER JOIN Application.TransactionTypes AS tt ON ct.TransactionTypeID = tt.TransactionTypeID
		LEFT OUTER JOIN Application.PaymentMethods AS pm ON ct.PaymentMethodID = pm.PaymentMethodID