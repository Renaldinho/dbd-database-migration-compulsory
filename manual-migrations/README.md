
# Manual migration scripts

this project within the repository is of a collection of SQL migration scripts designed to create a db schematic for the compulsory project and to demonstrate how a structured and process leads to a more understandable, managable process



## Prerequisets

 - SQL Server or a compatible database system
 - A database client tool such as SQL Server Management Studio (SSMS), Azure Data Studio, or a command-line tool
 - Access to a database where you can execute SQL scripts


## Overview

The migration scripts in this repository are organized by version numbers, ensuring that changes to the database schema are applied sequentially. This structured approach aids in maintaining the integrity and consistency of the database schema over time.


## Applying Migrations
Migrations are numbered and should be applied in sequence to ensure database schema integrity. Each script is prefixed with a version number (e.g., V001_, V002_, etc.), indicating its order in the migration sequence.

Initial Setup: Start with the base setup script (V000_InitialSetup.sql). This script establishes the foundational structure of the database and does not have an associated rollback script.

Sequential Application: Apply each subsequent migration script in numerical order. This sequential approach ensures that dependencies between schema changes are respected.

## Rollbacks
Rollback scripts are provided to undo specific migrations if needed. Like migrations, rollbacks should be executed in reverse sequence to correctly revert the database schema to a previous state.

No Rollback for Initial Setup: The initial database creation script (V000_InitialSetup.sql) does not require a rollback, as it forms the base of the database schema.
Executing Rollbacks: For other migrations, use the corresponding rollback script if you need to undo changes. These scripts are also versioned for easy identification.
Ensuring Correct Database Connection

## Important
Before executing migrations or rollbacks, verify your database connection settings, especially in local development environments. Ensure the connection string and other connection parameters correctly point to your intended database instance to prevent accidental changes to the wrong database.

