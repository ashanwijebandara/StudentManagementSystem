using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using SM_System.Tables;

namespace SM_System
{
    public class DataContext : DbContext
    {
        private readonly string _path = @"D:\temp\SM_System.db";

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder.UseSqlite($"Data Source={_path}");

        public DbSet<User> Dbusers { get; set; }
        public DbSet<Student> Dbstudent { get; set; }
        public DbSet<Module> Dbmodule { get; set; }

        public DbSet<StudentModules> DbstudentModules { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<StudentModules>()
            .HasKey(ms => ms.Id);

            modelBuilder.Entity<StudentModules>()
                .HasOne(ms => ms.Student)
                .WithMany(s => s.studentModules)
                .HasForeignKey(ms => ms.StudentId);

            modelBuilder.Entity<StudentModules>()
                .HasOne(ms => ms.Module)
                .WithMany(m => m.studentsModule)
                .HasForeignKey(ms => ms.ModuleId);



        }
    }
}
