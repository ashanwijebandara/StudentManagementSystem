using CommunityToolkit.Mvvm.ComponentModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SM_System.Tables;
using SM_System.Add;
using CommunityToolkit.Mvvm.Input;
using System.Windows;

namespace SM_System.View
{
   public partial class StudentWindowVM:ObservableObject
    {
        [ObservableProperty]
        public ObservableCollection<Student> viewstudent;

        [ObservableProperty]
        public Student selectedstudent;

        public StudentWindowVM()
        {
            viewstudent = new ObservableCollection<Student>();
            using (var context = new DataContext())
            {
                var students = context.Dbstudent.ToList();
                foreach (var stdn in students)
                {
                    viewstudent.Add(stdn);
                }
            }
        }

        public void StudentList()
        {
            using (var data = new DataContext())
            {
                var list = data.Dbstudent.ToList();
                Viewstudent = new ObservableCollection<Student>(list);

            }
        }
        [RelayCommand]
        public void UpdateStudent()
        {
            if (selectedstudent != null)
            {
                var stdnt = new AddStudentWindowVM(selectedstudent);
                var window = new AddStudentWindow(stdnt);
                window.ShowDialog();
                StudentList();
            }
            else
            {
                MessageBox.Show("Select a Student");
            }
        }
        [RelayCommand]
        public void DeleteStudent()
        {
            Student stdnt = selectedstudent;
            if (selectedstudent != null)
            {
                using (var data1 = new DataContext())
                {
                    data1.Dbstudent.Remove(stdnt);
                    data1.SaveChanges();
                    MessageBox.Show("Selected Student Deleted");
                    StudentList();

                }
            }
            else
            {
                MessageBox.Show("Select a Student");
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
