using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TanveerSchoolSystem.Bussiness
{
    public class StudentEnrollment
    {
        public int Id { get; set; }
        public Nullable<int> StudentId { get; set; }
        public Nullable<int> CourseId { get; set; }
        public Nullable<System.DateTime> EnrollmentDate { get; set; }
        public Nullable<int> EnrollmentId { get; set; }

        public virtual Course Course { get; set; }
        public virtual Student Student { get; set; }
    }
}
