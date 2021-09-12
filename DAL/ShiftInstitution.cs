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
    
    public partial class ShiftInstitution
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ShiftInstitution()
        {
            this.EmployeeLimit = new HashSet<EmployeeLimit>();
            this.EmployeeShifts = new HashSet<EmployeeShifts>();
        }
    
        public int shiftInstitutionId { get; set; }
        public Nullable<int> institutionId { get; set; }
        public Nullable<int> shiftNum { get; set; }
        public string shiftDescription { get; set; }
        public Nullable<System.TimeSpan> startTime { get; set; }
        public Nullable<System.TimeSpan> EndTime { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EmployeeLimit> EmployeeLimit { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EmployeeShifts> EmployeeShifts { get; set; }
        public virtual InstitutionDtails InstitutionDtails { get; set; }
    }
}
