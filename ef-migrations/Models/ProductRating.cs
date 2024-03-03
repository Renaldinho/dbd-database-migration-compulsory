namespace ef_migrations.Models;

public class ProductRating
{
    public int ProductRatingId { get; set; }
    public int ProductId { get; set; }
    public decimal Rating { get; set; }
    public Product Product { get; set; }
}