﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TCCEntities : DbContext
    {
        public TCCEntities()
            : base("name=TCCEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Applications> Applications { get; set; }
        public virtual DbSet<belongs> belongs { get; set; }
        public virtual DbSet<booking> booking { get; set; }
        public virtual DbSet<clubGroup> clubGroup { get; set; }
        public virtual DbSet<court> court { get; set; }
        public virtual DbSet<Memberships> Memberships { get; set; }
        public virtual DbSet<NPA> NPA { get; set; }
        public virtual DbSet<Profiles> Profiles { get; set; }
        public virtual DbSet<role> role { get; set; }
        public virtual DbSet<Roles> Roles { get; set; }
        public virtual DbSet<tccmembership> tccmembership { get; set; }
        public virtual DbSet<Users> Users { get; set; }
    }
}
