-- Add StoreID to the Sale table
ALTER TABLE Sale
ADD StoreID INT;

Go
-- Add foreign key constraint to reference Store table
ALTER TABLE Sale
ADD CONSTRAINT FK_Sale_Store
FOREIGN KEY (StoreID) REFERENCES Store(StoreID);

Go

INSERT INTO Sale (CustomerID, ProductId, DateSold, StoreID)
VALUES (1, 1,'2024-09-29', 1);

Go

SELECT 
    S.ID, 
    S.CustomerId, 
    S.ProductId,
    S.DateSold, 
    St.Name AS StoreName, 
    St.Location AS StoreLocation
FROM 
    Sale S
JOIN 
    Store St ON S.StoreID = St.StoreID;

Go
