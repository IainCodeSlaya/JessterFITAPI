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
    
    public partial class Day_Workout
    {
        public int Day_Workout_ID { get; set; }
        public int Workout_Set_ID { get; set; }
        public int Exercise_Plan_Day_ID { get; set; }
    
        public virtual Exercise_Plan_Day Exercise_Plan_Day { get; set; }
        public virtual Workout_Set Workout_Set { get; set; }
    }
}
