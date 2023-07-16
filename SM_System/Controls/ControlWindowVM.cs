using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using SM_System.Add;
using SM_System.Tables;
using SM_System.View;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace SM_System.Controls
{
    public partial class ControlWindowVM : ObservableObject
    {
        public bool IsAdmin { get; set; }

        public bool IsUser { get; set; }

        [ObservableProperty]
        public string title;

        [ObservableProperty]
        ObservableCollection<Student> controlstudents;
        [ObservableProperty]
        ObservableCollection<User> controlusers;
        [ObservableProperty]
        ObservableCollection<Module> controlmodules;


        //[ObservableProperty]
        //public int totalUsers;

        //[ObservableProperty]
        //public int totalStudents;

        //[ObservableProperty]
        //public int totalModules;

        //[ObservableProperty]
        //public int totalAdmins;


        public int _totalUsers;

        public int TotalUsers
        {
            get => _totalUsers;
            set
            {
                if (value == _totalUsers)
                {
                    return;
                }
                _totalUsers = value;
                OnPropertyChanged(nameof(TotalUsers));
            }
        }



        public int _totalModules;
        public int TotalModules
        {
            get => _totalModules;
            set
            {
                if (value == _totalModules)
                {
                    return;
                }
                _totalModules = value;
                OnPropertyChanged(nameof(TotalModules));
            }

        }






        public int _totalStudents;
        public int TotalStudents
        {
            get => _totalStudents;
            set
            {
                if (value == _totalStudents)
                {
                    return;
                }
                _totalStudents = value;
                OnPropertyChanged(nameof(TotalStudents));
            }

        }


        public int _totalAdmins;
        public int TotalAdmins
        {
            get => _totalAdmins;
            set
            {
                if (value == _totalAdmins)
                {
                    return;
                }
                _totalAdmins = value;
                OnPropertyChanged(nameof(TotalAdmins));
            }

        }




        public void updateStats()
        {
            using (var db = new DataContext())
            {
                TotalStudents = db.Dbstudent.Count();
                TotalModules = db.Dbmodule.Count();
                TotalUsers = db.Dbusers.Count(user => user.Type == "user");
                TotalAdmins = db.Dbusers.Count(user => user.Type == "admin");
                //MessageBox.Show(totalStudents.ToString());

            }
        }

        public ControlWindowVM() {
            updateStats();
        }


        [RelayCommand]
        public void AddStudent()
        {
            var vm = new AddStudentWindowVM();
            var window = new AddStudentWindow(vm);
            window.ShowDialog();
            updateStats();

        }
        [RelayCommand]
        public void AddUser()
        {
            var vm = new AddUserWindowVM();
            var window = new AddUserWindow(vm);
            window.ShowDialog();
            updateStats();

        }

        [RelayCommand]
        public void AddModule()
        {
            var vm = new AddModuleWindowVM();
            var window = new AddModuleWindow(vm);
            window.ShowDialog();
            updateStats();



        }
        [RelayCommand]
        public void ViewStudent()
        {

            var window = new StudentWindow();
            window.ShowDialog();
            updateStats();
            //CloseCurrentWindow();


        }

        [RelayCommand]
        public void ViewUser()
        {
            var window = new UserWindow();
            window.ShowDialog();
            updateStats();
        }
        [RelayCommand]
        public void ViewModule()
        {
            var window = new ModuleWindow();
            window.ShowDialog();

            updateStats();

        }

        private void CloseCurrentWindow()
        {
            foreach(Window item in Application.Current.Windows)
            {
                if (item.DataContext == this)
                {
                    item.Close();
                }
            }
        }
        [RelayCommand]
        public void Logout()
        {
            LoginWindow login = new LoginWindow();
            login.Show();
            CloseCurrentWindow();
           

        }

    }
}