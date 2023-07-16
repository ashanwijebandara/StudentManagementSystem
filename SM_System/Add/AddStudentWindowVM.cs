using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.EntityFrameworkCore.Metadata;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using SM_System.Controls;
using SM_System.Tables;
using SM_System.View;
using System.Windows.Markup;

namespace SM_System.Add
{
    public partial class AddStudentWindowVM : ObservableObject
    {
        [ObservableProperty]
        public string studentName;
        [ObservableProperty]
        public string phoneNumber;
        [ObservableProperty]
        public string address;
        [ObservableProperty]
        public int registerNumber;
        [ObservableProperty]
        public Student newstudent;
        [ObservableProperty]
        public bool isexist;

        //[ObservableProperty]
        //public float studentGpa;

        public float _studentGpa;

        public float StudentGpa
        {
            get => _studentGpa;
            set
            {
                if (value == _studentGpa)
                {
                    return;
                }
                _studentGpa = value;
                OnPropertyChanged(nameof(StudentGpa));
            }

        }



        [ObservableProperty]
        public Module selectedmodule1;
     


        public string studentGrade;

        public string StudentGrade
        {
            get => studentGrade;
            set
            {
                if(value == studentGrade)
                {
                    return;
                }
                studentGrade = value;
                OnPropertyChanged(nameof(StudentGrade));
            }
           
        }

        
        
        public Module selectedmodule2;

        public Module Selectedmodule2
        {
            get => selectedmodule2;
            set
            {
                if (value == selectedmodule2)
                {
                    return;
                }
                selectedmodule2 = value;
                OnPropertyChanged(nameof(Selectedmodule2));
                
            }
        }


        [ObservableProperty]
        public ObservableCollection<Module> viewmoduls;
        [ObservableProperty]
        public ObservableCollection<Module> registedModules;

        



        public AddStudentWindowVM()
        {

            isexist = false;
        }

        public AddStudentWindowVM(Student student)
        {
            studentName = student.Name;
            phoneNumber = student.PhoneNumber;
            address = student.Address;
            registerNumber = student.RegisterNumber;
            isexist = true;
            newstudent = student;
            GetRegModule();
            StudentGpa = (float)student.Gpa;

        }
        [RelayCommand]
        public void Save()
        {
            if (isexist == false)
            {
                if (studentName != null)
                {
                    Student student = new Student()
                    {
                        Name = studentName,
                        PhoneNumber = phoneNumber,
                        Address = address,
                        RegisterNumber = registerNumber
                    };

                    using (var data = new DataContext())
                    {
                        data.Dbstudent.Add(student);
                        data.SaveChanges();
                        MessageBox.Show("new student added");
                        CloseCurrentWindow();

                    }
                }
            }
            else
            {


                using (var data = new DataContext())
                {
                    Student student = data.Dbstudent.Find(newstudent.Id);
                    student.Name = studentName;
                    student.Address = address;
                    student.PhoneNumber = phoneNumber;
                    student.RegisterNumber = registerNumber;


                    data.SaveChanges();
                    MessageBox.Show("Updated");
                    Student updatedStud = data.Dbstudent.Find(newstudent.Id);
                    StudentGpa = (float)updatedStud.Gpa;
                    CloseCurrentWindow();
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
        public void AddGrade()
        {
            if (selectedmodule2 != null)
            {
                using (var db = new DataContext())
                {


                    StudentModules studentModules = new StudentModules();

                    studentModules = db.DbstudentModules.FirstOrDefault(sm => sm.ModuleId == selectedmodule2.Id && sm.StudentId == newstudent.Id);

                    studentModules.Grade = studentGrade;
                    db.SaveChanges();


                    MessageBox.Show("Marks Added");

                    GetRegModule();
                    Student updatedStud = db.Dbstudent.Find(newstudent.Id);
                    StudentGpa = (float)updatedStud.Gpa;

                }
            }
            //var window = new ResultWindow();

            //window.Show();

        }
        public void GetRegModule()
        {
            using (var db = new DataContext())
            {
                List<int> getmoduleid = new List<int>();
                var list = db.DbstudentModules.ToList();
                var list2 = db.Dbmodule.ToList();
                RegistedModules = new ObservableCollection<Module>();
                viewmoduls = new ObservableCollection<Module>(list2);
                foreach (var stdnt in list)
                {
                    if (stdnt.StudentId == newstudent.Id)
                    {
                        getmoduleid.Add(stdnt.ModuleId);
                    }
                }
                foreach (var m in getmoduleid)
                {

                    foreach (var M in viewmoduls)
                    {
                        if (m == M.Id)
                        {
                            RegistedModules.Add(M);
                        }
                    }
                }

            }


        }

        [RelayCommand]
        public void RegModule()
        {
            if (selectedmodule1 != null)
            {
                using (var db = new DataContext())
                {
                    bool isreg = db.DbstudentModules.Any(sm => sm.ModuleId == selectedmodule1.Id && sm.StudentId == newstudent.Id);
                    if (isreg == false)
                    {
                        StudentModules studentModules = new StudentModules()
                        {
                            StudentId = newstudent.Id,
                            ModuleId = selectedmodule1.Id,
                            Credit = selectedmodule1.Credit,
                            Grade = "F"
                        };
                        db.DbstudentModules.Add(studentModules);
                        db.SaveChanges();



                        MessageBox.Show("Done");
                        GetRegModule();
                    }
                    else
                    {
                        MessageBox.Show("Already registred");
                    }

                }
            }
            else
            {
                MessageBox.Show("Select a module from module list");
            }
        }

        [RelayCommand]
        public void RemoveRegMod()
        {
            if (selectedmodule2 != null)
            {
                using (var db = new DataContext())
                {
                    StudentModules studentModules = new StudentModules();
                    studentModules = db.DbstudentModules.FirstOrDefault(sm => sm.ModuleId == selectedmodule2.Id && sm.StudentId == newstudent.Id);
                    db.DbstudentModules.Remove(studentModules);
                    db.SaveChanges();


                    MessageBox.Show("Removed");
                    GetRegModule();

                }
            }
            else
            {
                MessageBox.Show("Select a registed module");
            }

        }
        [RelayCommand]
        public void CloseWindow()
        {
            CloseCurrentWindow();
        }


    }
}
