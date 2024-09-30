CREATE FUNCTION dbo.CalculateAge1
(
    @DateOfBirth DATE
)
RETURNS INT
AS
BEGIN
    DECLARE @Age INT;
    DECLARE @CurrentDate DATE = GETDATE();  -- Get the current date

    -- Calculate initial age based on the year difference
    SET @Age = DATEDIFF(YEAR, @DateOfBirth, @CurrentDate);

    -- Adjust age if the birthday has not occurred this year
    IF (MONTH(@DateOfBirth) > MONTH(@CurrentDate)) OR 
       (MONTH(@DateOfBirth) = MONTH(@CurrentDate) AND DAY(@DateOfBirth) > DAY(@CurrentDate))
    BEGIN
        SET @Age = @Age - 1;  -- Subtract 1 if birthday has not occurred yet
    END

    RETURN @Age;  -- Return the calculated age
END;

Go

SELECT dbo.CalculateAge('1995-12-22') AS Age; 

Go
