using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using SM_System.Tables;

namespace SM_System.Add
{
    public partial class AddUserWindowVM:ObservableObject
    {
        [ObservableProperty] 
        public string userName;
        [ObservableProperty] 
        public string passwordOne;
        [ObservableProperty]
        public string passwordTwo;
        [ObservableProperty]
        public bool isadmin;
        [ObservableProperty]
        public User newuser;
        [ObservableProperty]
        public bool isexist;

        public AddUserWindowVM()
        {
            isexist = false;
        }

        public AddUserWindowVM(User user)
        {
            userName = user.UserName;
            passwordOne = user.Password;
            passwordTwo = user.Password;
            if (user.Type == "admin")
            {
                isadmin = true;
            }
            isexist = true;
            newuser = user;
        }
        private void CloseCurrentWindow()
        {
            foreach (Window item in Application.Current.Windows)
            {
                if (item.DataContext == this)
                {
                    item.Close();
                }
            }
        }

        [RelayCommand]
        public void AddUser()
        {
            if (isexist == false)
            {

                if (userName != null)
                {
                    User user = new User()
                    {
                        UserName = userName,
                        Password = passwordOne
                    };
                    if (isadmin)
                    {
                        user.Type = "admin";
                    }
                    else
                    {
                        user.Type = "user";
                    }
                    if(passwordOne == passwordTwo) {
                        using (var data = new DataContext())
                        {
                            data.Dbusers.Add(user);
                            data.SaveChanges();
                            MessageBox.Show("new user added", "message");
                            CloseCurrentWindow();

                        }
                    }
                    else
                    {
                        MessageBox.Show("Passwords are different");
                    }
                    

                }
            }
            else 
            { 
               using(var data = new DataContext())
               {
                    User usr = data.Dbusers.Find(newuser.Id);
                    usr.UserName = userName;
                    usr.Password = passwordOne;
                    usr.Password = passwordTwo;
                    if (isadmin)
                    {
                        usr.Type = "admin";
                    }
                    else
                    {
                        usr.Type = "user";
                    }
                    if (passwordOne == passwordTwo) {
                        data.SaveChanges();
                        MessageBox.Show("Updated");
                        CloseCurrentWindow();
                    }
                    else
                    {
                        MessageBox.Show("Passwords are different");
                    }
                    
                }
            
            
            }
        }
        [RelayCommand]
        public void CloseWindow()
        {
            CloseCurrentWindow();
        }



    }
}
