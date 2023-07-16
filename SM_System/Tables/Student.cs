using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SM_System.Tables
{
    public class Student
    {
        public Student() { }

        public Student(string name, string phoneNumber, string address, int registerNumber)
        {
            Name = name;
            PhoneNumber = phoneNumber;
            Address = address;
            RegisterNumber = registerNumber;
        }

        [Key]
        public int Id { get; set; }

        public string Name { get; set; }

        public string PhoneNumber { get; set; }

        public string Address { get; set; }

        public int RegisterNumber { get; set; }
        public ObservableCollection<StudentModules> studentModules { get; set; }
        public ObservableCollection<StudentModules> getModules = new ObservableCollection<StudentModules>();

        public double Gpa
        {
            get
            {
                GetRegmod();
                return CalcGPA();
                
            }
        }


        public double CalcGPA()
        {
            double totalGradePoints = 0;
            double totalCredits = 0.00001;
            if (getModules != null)
            {

                foreach (var module in getModules)
                {
                    int credit = module.Credit;
                    string grade = module.Grade;
                    double gradePoint = 0;
                    bool isValid = true;
                    if(credit > 0)
                    {
                        switch (grade)
                        {
                            case "A+":
                                gradePoint = 4.0;
                                break;
                            case "A":
                                gradePoint = 4.0;
                                break;
                            case "A-":
                                gradePoint = 3.7;
                                break;
                            case "B+":
                                gradePoint = 3.3;
                                break;
                            case "B":
                                gradePoint = 3.0;
                                break;
                            case "B-":
                                gradePoint = 2.7;
                                break;
                            case "C+":
                                gradePoint = 2.3;
                                break;
                            case "C":
                                gradePoint = 2.0;
                                break;
                            case "C-":
                                gradePoint = 1.7;
                                break;
                            case "D":
                                gradePoint = 1.0;
                                break;
                            case "F":
                                gradePoint = 0.0;
                                break;
                            default:
                                isValid = false;
                                gradePoint = 0.0;
                                break;
                        }
                        if (isValid)
                        {
                            totalCredits += credit;
                            totalGradePoints += credit * gradePoint;

                        }
                        else
                        {
                            totalGradePoints += credit * gradePoint;

                        }
                    }
                   
                }

            };
            double number = 0;
            number = totalGradePoints / totalCredits;
            return (double)Math.Round(number, 2);
        }


        public void GetRegmod()
        {
            using (var db = new DataContext())
            {

                var list = db.DbstudentModules.ToList();

                ObservableCollection<StudentModules> Modules = new ObservableCollection<StudentModules>(list);
                foreach (var sm in Modules)
                {
                    if (sm.StudentId == Id)
                    {
                        getModules.Add(sm);
                    }

                }


            }


        }





    }
}
