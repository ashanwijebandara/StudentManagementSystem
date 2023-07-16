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
    public partial class ModuleWindowVM:ObservableObject
    {
        [ObservableProperty]
        public ObservableCollection<Module> viewmodules;

        [ObservableProperty]
        public Module selectedmodule;

        public ModuleWindowVM()
        {
            viewmodules = new ObservableCollection<Module>();
            using(var context = new DataContext())
            {
                var modules = context.Dbmodule.ToList();
                foreach(var module in modules)
                {
                    viewmodules.Add(module);
                }
            }
        }
        public void ModuleList()
        {
            using (var data = new DataContext())
            {
                var list = data.Dbmodule.ToList();
                Viewmodules = new ObservableCollection<Module>(list);

            }

        }
        [RelayCommand]
        public void UpdateModule()
        {
            if (selectedmodule != null)
            {
                var modl = new AddModuleWindowVM(selectedmodule);
                var window = new AddModuleWindow(modl);
                window.ShowDialog();
                ModuleList();


            }
            else
            {
                MessageBox.Show("Select a Module");

            }
        }
        [RelayCommand]
        public void DeleteModule()
        {
            Module modl = selectedmodule;
            if (selectedmodule != null)
            {
                using (var data = new DataContext())
                {
                    data.Dbmodule.Remove(modl);
                    data.SaveChanges();
                    MessageBox.Show("Selected Module Deleted");
                    ModuleList();

                }
            }
            else
            {
                MessageBox.Show("Select a Module");
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
