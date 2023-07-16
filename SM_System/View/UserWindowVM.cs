using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using SM_System.Add;
using SM_System.Tables;

namespace SM_System.View
{
    public partial class UserWindowVM:ObservableObject
    {
        [ObservableProperty]
        public ObservableCollection<User> viewUsers;

        [ObservableProperty]
        public User selectedUser;

        public UserWindowVM() {
            viewUsers = new ObservableCollection<User>();
            using (var context = new DataContext())
            {
                var users = context.Dbusers.ToList();
                foreach (var user1 in users)
                {
                    viewUsers.Add(user1);
                }
            }

        }

        public void UserList()
        {
            using(var data = new DataContext())
            {
                var list = data.Dbusers.ToList();
                ViewUsers = new ObservableCollection<User>(list);

            }
        }
        [RelayCommand]
        public void UpdateUser()
        {
            if (selectedUser != null)
            {
                var usr = new AddUserWindowVM(selectedUser);
                var window = new AddUserWindow(usr);
                window.ShowDialog();
                UserList();

            }
            else
            {
                MessageBox.Show("Select a user");

            }
           
        }
        [RelayCommand]
        public void DeleteUser()
        {
            User user = selectedUser;
            if (selectedUser != null)
            {
                using(var data = new DataContext())
                {
                    data.Dbusers.Remove(user);
                    data.SaveChanges();
                    MessageBox.Show("Selected User Deleted");
                    UserList();

                }
            }
            else
            {
                MessageBox.Show("Select a user");
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
