//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Constraints
    {
        public int constraintId { get; set; }
        public Nullable<int> employeeInInstitutionId { get; set; }
        public Nullable<int> dayInWeek { get; set; }
        public Nullable<int> shiftId { get; set; }
        public Nullable<System.DateTime> dateOfCreate { get; set; }
    
        public virtual ShiftInstitution ShiftInstitution { get; set; }
    }
}
