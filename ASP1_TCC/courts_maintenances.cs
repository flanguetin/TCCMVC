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
    
    public partial class courts_maintenances
    {
        public int idCourts_Maintenances { get; set; }
        public int fkCourts { get; set; }
        public int fkMaintenances { get; set; }
    
        public virtual courts courts { get; set; }
        public virtual maintenances maintenances { get; set; }
    }
}
