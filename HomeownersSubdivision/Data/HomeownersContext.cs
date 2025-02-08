using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using HomeownersSubdivision.Models;

namespace HomeownersSubdivision.Data
{
    public class HomeownersContext : IdentityDbContext<ApplicationUser>
    {
        public HomeownersContext(DbContextOptions<HomeownersContext> options)
            : base(options)
        { }

        public DbSet<Announcement> Announcements { get; set; }
    }
}
