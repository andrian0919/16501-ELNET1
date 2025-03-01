using HomeownersPortal.Data;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using HomeownersPortal.Models;

var builder = WebApplication.CreateBuilder(args);

// Add MySQL Database Context
var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseMySql(connectionString, ServerVersion.AutoDetect(connectionString)));

builder.Services.AddIdentity<ApplicationUser, IdentityRole>()
    .AddEntityFrameworkStores<ApplicationDbContext>()
    .AddDefaultTokenProviders();

builder.Services.AddControllersWithViews();

var app = builder.Build();

// Seed Admin and Staff Accounts
using (var scope = app.Services.CreateScope())
{
    var services = scope.ServiceProvider;
    await InitializeRolesAndUsers(services);
}

app.UseStaticFiles();
app.UseAuthentication();
app.UseAuthorization();
app.UseRouting();
app.UseEndpoints(endpoints =>
{
    endpoints.MapControllerRoute(
        name: "default",
        pattern: "{controller=Home}/{action=Index}/{id?}");
});

app.Run();

// Create Roles and Default Users
async Task InitializeRolesAndUsers(IServiceProvider serviceProvider)
{
    var roleManager = serviceProvider.GetRequiredService<RoleManager<IdentityRole>>();
    var userManager = serviceProvider.GetRequiredService<UserManager<ApplicationUser>>();

    string[] roleNames = { "Admin", "Staff", "Homeowner" };
    foreach (var role in roleNames)
    {
        if (!await roleManager.RoleExistsAsync(role))
        {
            await roleManager.CreateAsync(new IdentityRole(role));
        }
    }

    // Create Admin Account
    var adminUser = await userManager.FindByEmailAsync("admin@subdivision.com");
    if (adminUser == null)
    {
        var user = new ApplicationUser { UserName = "admin@subdivision.com", Email = "admin@subdivision.com", FullName = "Admin", Address = "Subdivision Office" };
        var result = await userManager.CreateAsync(user, "Admin@123");
        if (result.Succeeded)
        {
            await userManager.AddToRoleAsync(user, "Admin");
        }
    }

    // Create Staff Account
    var staffUser = await userManager.FindByEmailAsync("staff@subdivision.com");
    if (staffUser == null)
    {
        var user = new ApplicationUser { UserName = "staff@subdivision.com", Email = "staff@subdivision.com", FullName = "Staff Member", Address = "Subdivision Office" };
        var result = await userManager.CreateAsync(user, "Staff@123");
        if (result.Succeeded)
        {
            await userManager.AddToRoleAsync(user, "Staff");
        }
    }
}
