using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Identity;
using HomeownersPortal.Data;
using HomeownersPortal.Models;
using System.Linq;
using System.Threading.Tasks;
using System;

namespace HomeownersPortal.Controllers
{
    public class AnnouncementsController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<ApplicationUser> _userManager;

        public AnnouncementsController(ApplicationDbContext context, UserManager<ApplicationUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        public async Task<IActionResult> Index()
        {
            var announcements = _context.Announcements
                .OrderByDescending(a => a.PostedDate)
                .ToList();

            return View(announcements);
        }

        public async Task<IActionResult> Create()
        {
            var user = await _userManager.GetUserAsync(User);
            var isAdmin = user != null && user.Email == "admin@subdivision.com";

            if (!isAdmin)
            {
                return Forbid();
            }

            ViewBag.IsAdmin = isAdmin;
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create(Announcement announcement)
        {
            var user = await _userManager.GetUserAsync(User);
            var isAdmin = user != null && user.Email == "admin@subdivision.com";

            if (!isAdmin)
            {
                return Forbid();
            }

            if (ModelState.IsValid)
            {
                announcement.PostedDate = DateTime.UtcNow;
                _context.Announcements.Add(announcement);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(announcement);
        }
    }
}