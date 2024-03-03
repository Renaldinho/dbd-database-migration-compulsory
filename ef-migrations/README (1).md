
# Entity framework database migrations

This project is a simple entity framework project that  It demonstrates a structured and process-driven approach to creating and maintaining a database schema, making the development process more understandable and manageable.



## Prerequisites

 - .NET Core SDK, compatible with EF Core
 - (Optional) A database inspection tool like DataGrip, DB Browser for SQLite, or similar to view and validate database schema changes
Overview


This project uses EF Core migrations to apply version-controlled schema changes to a SQLite database. Migrations allow for incremental updates and rollbacks, ensuring schema consistency and integrity throughout the development lifecycle.
## Applying Migrations

Migrations in EF Core are automatically numbered and timestamped to ensure their sequential application reflects the evolution of the database schema. Here’s how to manage and apply migrations:

 - Initial Setup: Initially, create a base migration that establishes the foundational structure of the database. This is typically done after defining your initial domain models and DbContext configuration:

```bash
    dotnet ef migrations add InitialCreate
```

 - Sequential Application: As your application evolves and your domain models change, generate and apply migrations sequentially to update the database schema:


```bash
    dotnet ef migrations add <NameOfYourMigration>
    dotnet ef database update
```

This process adds migration scripts to your project and applies them to your database, ensuring that the schema matches your models.

## Applying rollbacks


EF Core facilitates rolling back applied migrations, allowing you to revert the database schema to a previous state if needed:

- Reverting to a Specific Migration: To undo changes and revert to a specific migration, use:

```bash
    dotnet ef database update <MigrationName>
```
Replace <MigrationName> with the name of the target migration you wish to revert to. EF Core will rollback any migrations applied after the specified one.

 - Removing the Last Migration: If the most recent migration has not been applied to the database, that is you've ran the command to create a migration and not updated the database and you've made changes to the application.
 
```bash
     dotnet ef migrations remove
```


## Accessing past migrations

To view the migrations applied to the project for potentially rolling back to a previous version you can use the command 

```bash
     dotnet ef migrations list
```





    