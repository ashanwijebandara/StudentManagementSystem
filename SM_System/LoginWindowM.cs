using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using SM_System.Controls;

namespace SM_System
{
    public partial class LoginWindowVM : ObservableObject
    {
        [ObservableProperty]
        public string username;
        [ObservableProperty]
        public string password;




        [RelayCommand]
        public void Login()
        {
            if (username != null)
            {
                using (var database = new DataContext())
                {
                    bool present = database.Dbusers.Any(prsn => prsn.UserName == username && prsn.Password == Password);

                    if (present)
                    {
                        bool isadmin = database.Dbusers.Any(prsn => prsn.UserName == username && prsn.Password == Password && prsn.Type == "admin");
                        ControlWindowVM control = new ControlWindowVM();
                        //control.updateStats();
                        control.IsAdmin = isadmin;
                        control.IsUser = true;
                        if (isadmin)
                        {
                            control.IsUser = false;
                        }
                        if (isadmin)
                        {
                            control.title = "Admin User";

                        }
                        else
                        {
                            control.title = "User";
                        }

                        ControlWindow window = new ControlWindow(control);

                        window.Show();
                        CloseCurrentWindow();

                    }
                    else
                    {
                        MessageBox.Show("Username or Password incorect");

                    }


                }



            }


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
        public void CloseWindow()
        {
            CloseCurrentWindow();
        }
    }
}
