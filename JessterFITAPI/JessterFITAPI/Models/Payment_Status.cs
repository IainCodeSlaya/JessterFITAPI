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
    
    public partial class Payment_Status
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Payment_Status()
        {
            this.Client_Plan = new HashSet<Client_Plan>();
        }
    
        public int Payment_Status_ID { get; set; }
        public string Payment_Status_Desc { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Client_Plan> Client_Plan { get; set; }
    }
}