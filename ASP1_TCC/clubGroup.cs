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
    
    public partial class clubGroup
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public clubGroup()
        {
            this.belongs = new HashSet<belongs>();
        }
    
        public int idclubGroup { get; set; }
        public string groupName { get; set; }
        public int maxResp { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<belongs> belongs { get; set; }
    }
}
