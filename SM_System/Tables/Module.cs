using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SM_System.Tables
{
    public class Module
    {
        public Module() { }

        public Module(string name, int credit, int code)
        {
            ModuleName = name;
            Credit = credit;
            Code = code;
        }

        [Key]
        public int Id { get; set; }
        public string ModuleName { get; set; }
        public int Credit { get; set; }

        public int Code { get; set; }

        public ObservableCollection<StudentModules> studentsModule { get; set; }

    }
}
