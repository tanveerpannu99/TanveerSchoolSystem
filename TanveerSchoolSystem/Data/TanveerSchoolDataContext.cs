using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TanveerSchoolSystem.Bussiness;

namespace TanveerSchoolSystem.Data
{
    public class TanveerSchoolDataContext : DbContext
    {
        public TanveerSchoolDataContext(DbContextOptions<TanveerSchoolDataContext> options)
            : base(options)
        {
        }

        public DbSet<Course> Courses { get; set; }
        public DbSet<Department> Departments { get; set; }
        public DbSet<Student> Students { get; set; }
        public DbSet<StudentEnrollment> StudentEnrollments { get; set; }
    }
}
