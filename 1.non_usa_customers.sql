SELECT c.FirstName + ' ' + c.LastName FullName,
    c.CustomerId, c.Country
From Customer c 
WHERE c.Country != 'USA';
