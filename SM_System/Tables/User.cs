using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SM_System.Tables
{
    public class User
    {
        public User() { }

        public User(string username, string password, string type)
        {

            UserName = username;
            Password = password;
            Type = type;
        }


        [Key]
        public int Id { get; set; }
        public string UserName { get; set; }

        public string Password { get; set; }

        public string Type { get; set; }
    }
}
