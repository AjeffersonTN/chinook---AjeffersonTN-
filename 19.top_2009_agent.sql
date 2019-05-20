-- Which sales agent made the most in sales in 2009?

SELECT TOP 1
    MAX(TotalSales) TotalSales, EmployeeName
FROM
    (
    SELECT 
        SUM(i.Total) TotalSales, e.FirstName +' '+e.LastName EmployeeName,
        YEAR(i.InvoiceDate) As InvoiceYear
    FROM Invoice i, Employee e, Customer c
    WHERE i.CustomerId =    c.CustomerId
    AND c.SupportRepId = e.EmployeeId
    AND YEAR(i.InvoiceDate) ='2009'
    GROUP BY e.FirstName +' '+e.LastName, YEAR(i.InvoiceDate)
    ) Sales 
    GROUP BY EmployeeName
    ORDER BY TotalSales DESC;









