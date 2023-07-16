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
    public partial class AddModuleWindowVM:ObservableObject
    {
        [ObservableProperty]
        public string modName;
        [ObservableProperty]
        public int modCode;
        [ObservableProperty]
        public int modCredit;

        [ObservableProperty]
        public bool isnew;

        [ObservableProperty]
        public Module newmod;

        public AddModuleWindowVM()
        {
            isnew= false;
        }
        public AddModuleWindowVM(Module module)
        {
            modName = module.ModuleName;
            modCode = module.Code;
            modCredit = module.Credit;
            isnew= true;
            newmod= module;
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
        public void AddModule()
        {
            if(isnew==false)
            {
                if(modName!=null)
                {
                    Module module = new Module()
                    {
                        ModuleName = modName,
                        Code = modCode,
                        Credit = modCredit
                    };

                    using (var data = new DataContext())
                    {
                        data.Dbmodule.Add(module);
                        data.SaveChanges();
                        MessageBox.Show("new added");
                        CloseCurrentWindow();
                    }
                }
            }
            else
            {
                if(modName!=null)
                {
                    using (var data=new DataContext())
                    {
                        Module module = data.Dbmodule.Find(newmod.Id);
                        module.Credit=modCredit;
                        module.Code=modCode;
                        module.ModuleName=modName;
                        data.SaveChanges();
                        MessageBox.Show("Updated");
                        CloseCurrentWindow();


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
