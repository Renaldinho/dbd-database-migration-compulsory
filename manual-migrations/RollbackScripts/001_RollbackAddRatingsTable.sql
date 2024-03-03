-- rollback only removes the ratings table, because it's a one to many relationship and the reference is one sided
DROP TABLE IF EXISTS ProductRatings;
