//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ASP1_TCC
{
    using System;
    using System.Collections.Generic;
    
    public partial class belongs
    {
        public int idbelongs { get; set; }
        public System.Guid fkMember { get; set; }
        public int fkGroup { get; set; }
        public Nullable<int> fkRole { get; set; }
        public System.DateTime since { get; set; }
    
        public virtual role role { get; set; }
        public virtual clubGroup clubGroup { get; set; }
        public virtual Users Users { get; set; }
    }
}
