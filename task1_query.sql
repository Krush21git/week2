CREATE VIEW dbo.CustomerSaleView
AS
SELECT 
    C.Id,     --ID is in dbo.Customer table
    C.FirstName, --FirstName is in dbo.Customer table
    C.LastName,	--LastName is in dbo.Customer table
    CONCAT(C.FirstName,' ', C.LastName) AS FullName, -- New Full Name column
    -- Other columns in the view...
    S.DateSold      -- DateSold is from the dbo.Sale table
FROM 
    dbo.Customer C
JOIN 
    Sale S ON C.Id = S.CustomerID;  --dbo.Sale table is related to dbo.customer

-- Execute the first --
GO

-- Select from the newly created view

SELECT * FROM dbo.CustomerSaleView;

---- Execute the second

GO