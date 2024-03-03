-- Script to create the Categories table
CREATE TABLE Categories (
    CategoryId INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName NVARCHAR(255) NOT NULL
);

-- Script to add a CategoryId column to the Products table
ALTER TABLE Products
    ADD CategoryId INT;

-- Adding a foreign key constraint to reference the Categories table
ALTER TABLE Products
    ADD CONSTRAINT FK_Products_Categories FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId);
