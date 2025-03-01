using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;

namespace HomeownersPortal.Models
{
    public class ApplicationUser : IdentityUser
    {
        [Required] 
        public string FullName { get; set; }
        [Required] 
        public string Address { get; set; }

    }
}
