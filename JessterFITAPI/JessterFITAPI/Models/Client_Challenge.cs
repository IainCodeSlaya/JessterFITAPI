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
    
    public partial class Client_Challenge
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Client_Challenge()
        {
            this.Challenge_Payment = new HashSet<Challenge_Payment>();
        }
    
        public int Client_Challenge_ID { get; set; }
        public int Client_ID { get; set; }
        public int Challenge_ID { get; set; }
        public string Chal_Reference_Number { get; set; }
        public Nullable<int> Chal_Pay_Status_ID { get; set; }
        public Nullable<int> Booking_ID { get; set; }
    
        public virtual Booking Booking { get; set; }
        public virtual Challenge Challenge { get; set; }
        public virtual Challenge_Pay_Status Challenge_Pay_Status { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Challenge_Payment> Challenge_Payment { get; set; }
        public virtual Client Client { get; set; }
    }
}