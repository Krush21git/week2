CREATE TABLE Store
(
    StoreID INT PRIMARY KEY IDENTITY(1,1),  -- primary key for each store
    Name NVARCHAR(100) NOT NULL,            -- Name of the store
    Location NVARCHAR(200) NOT NULL         -- Location of the store
);

Go

INSERT INTO Store1 (Name, Location)
VALUES 
('Store A', 'Australia'),
('Store B', 'America'),
('Store C', 'Canada');

Go

Select * From Store1;

Go
