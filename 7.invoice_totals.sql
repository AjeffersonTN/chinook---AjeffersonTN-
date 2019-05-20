-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
SELECT c.FirstName +' '+c.LastName CustomerName, e.FirstName +' '+e.LastName EmployeeName, i.Total
From Invoice i 
JOIN Customer c on i.CustomerId = c.CustomerId
JOIN Employee e on e.EmployeeId = c.SupportRepId
Order By EmployeeName, CustomerName;


