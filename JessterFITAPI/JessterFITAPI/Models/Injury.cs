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
    
    public partial class Injury
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Injury()
        {
            this.Client_Injury = new HashSet<Client_Injury>();
        }
    
        public int Injury_ID { get; set; }
        public string Injury_Description { get; set; }
        public int Injury_Type_ID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Client_Injury> Client_Injury { get; set; }
        public virtual Injury_Type Injury_Type { get; set; }
    }
}