-- Rollback script to remove the CategoryId column and constraint from the Products table and finally removing categories table 
-- First, drop the foreign key constraint
ALTER TABLE Products
DROP CONSTRAINT IF EXISTS FK_Products_Categories;

-- drop the CategoryId column
ALTER TABLE Products
DROP COLUMN IF EXISTS CategoryId;
     
--  drop the Categories table
DROP TABLE IF EXISTS Categories;