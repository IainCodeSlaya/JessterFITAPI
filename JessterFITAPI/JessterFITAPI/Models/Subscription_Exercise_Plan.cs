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
    
    public partial class Subscription_Exercise_Plan
    {
        public int Subscription_Plan_ID { get; set; }
        public int Subscription_ID { get; set; }
        public int Exercise_Plan_ID { get; set; }
    
        public virtual Exercise_Plan Exercise_Plan { get; set; }
        public virtual Subscription Subscription { get; set; }
    }
}
