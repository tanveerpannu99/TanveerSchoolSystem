using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using TanveerSchoolSystem.Bussiness;
using TanveerSchoolSystem.Data;

namespace TanveerSchoolSystem.Pages.Course
{
    public class DetailsModel : PageModel
    {
        private readonly TanveerSchoolSystem.Data.TanveerSchoolDataContext _context;

        public DetailsModel(TanveerSchoolSystem.Data.TanveerSchoolDataContext context)
        {
            _context = context;
        }

        public TanveerSchoolSystem.Bussiness.Course Course { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Course = await _context.Courses
                .Include(c => c.Department).SingleOrDefaultAsync(m => m.Id == id);

            if (Course == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
