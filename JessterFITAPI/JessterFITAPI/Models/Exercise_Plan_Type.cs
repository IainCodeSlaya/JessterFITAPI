//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace JessterFITAPI.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Exercise_Plan_Type
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Exercise_Plan_Type()
        {
            this.Exercise_Plan = new HashSet<Exercise_Plan>();
        }
    
        public int Exercise_Plan_Type_ID { get; set; }
        public string Plan_Type_Description { get; set; }
        public decimal Plan_Type_Price { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Exercise_Plan> Exercise_Plan { get; set; }
    }
}
