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
    
    public partial class EmployeeInInstitution
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public EmployeeInInstitution()
        {
            this.Constraints = new HashSet<Constraints>();
            this.Dialogue = new HashSet<Dialogue>();
            this.EmployeeLimit = new HashSet<EmployeeLimit>();
            this.EmployeeLimit1 = new HashSet<EmployeeLimit>();
            this.EmployeeShifts = new HashSet<EmployeeShifts>();
        }
    
        public int employeeInInstitutionId { get; set; }
        public Nullable<int> employeerId { get; set; }
        public Nullable<int> institutionId { get; set; }
        public Nullable<int> fieldOfWorkId { get; set; }
        public string status { get; set; }
        public string shiftType { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Constraints> Constraints { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Dialogue> Dialogue { get; set; }
        public virtual EmployeeDetails EmployeeDetails { get; set; }
        public virtual FieldOfWorkInInstitution FieldOfWorkInInstitution { get; set; }
        public virtual InstitutionDtails InstitutionDtails { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EmployeeLimit> EmployeeLimit { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EmployeeLimit> EmployeeLimit1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EmployeeShifts> EmployeeShifts { get; set; }
    }
}
