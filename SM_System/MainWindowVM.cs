using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace SM_System
{
    public partial class MainWindowVM : ObservableObject
    {
        [RelayCommand]
        public void AdminLogin()
        {
            LoginWindow login = new LoginWindow();
            Application.Current.MainWindow.Close();
            login.Show();

        }

        [RelayCommand]

        public void UserLogin()
        {
            LoginWindow login = new LoginWindow();
            Application.Current.MainWindow.Close();
            login.Show();
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
        public void CloseMain()
        {
            CloseCurrentWindow();
        }

    }
}
