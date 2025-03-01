using System;
using System.ComponentModel.DataAnnotations;
using HomeownersPortal.Models;

namespace HomeownersPortal.Models
{
    public class Announcement
    {
        public int Id { get; set; }

        [Required]
        public string Title { get; set; }

        [Required]
        public string Content { get; set; }

        public DateTime PostedDate { get; set; } = DateTime.Now;
    }
}
