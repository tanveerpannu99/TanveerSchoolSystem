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
    public class IndexModel : PageModel
    {
        private readonly TanveerSchoolSystem.Data.TanveerSchoolDataContext _context;

        public IndexModel(TanveerSchoolSystem.Data.TanveerSchoolDataContext context)
        {
            _context = context;
        }

        public IList<TanveerSchoolSystem.Bussiness.Course> Course { get;set; }

        public async Task OnGetAsync()
        {
            Course = await _context.Courses
                .Include(c => c.Department).ToListAsync();
        }
    }
}
