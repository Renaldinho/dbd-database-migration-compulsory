-- Create the ProductRatings table
CREATE TABLE ProductRatings (
    RatingId INT IDENTITY(1,1) PRIMARY KEY,
    ProductId INT NOT NULL,
    Rating DECIMAL(3, 2) NOT NULL,
    CONSTRAINT FK_ProductRatings_Products FOREIGN KEY (ProductId) REFERENCES Products(Id)
);
