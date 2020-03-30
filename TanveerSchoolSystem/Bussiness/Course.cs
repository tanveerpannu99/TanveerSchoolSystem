using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TanveerSchoolSystem.Bussiness
{
    public class Course
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public Nullable<int> DepartmentId { get; set; }

        public virtual Department Department { get; set; }
        public virtual ICollection<StudentEnrollment> StudentEnrollments { get; set; }
    }
}
