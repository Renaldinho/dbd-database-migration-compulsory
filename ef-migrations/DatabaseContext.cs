using ef_migrations.Models;
using Microsoft.EntityFrameworkCore;

namespace ef_migrations;

public class DatabaseContext : DbContext
{
    public DbSet<Product> Products { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder.UseSqlite("DataSource=db.db");
}