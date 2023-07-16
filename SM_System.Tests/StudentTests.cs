using FluentAssertions;
using System.Collections.ObjectModel;
using Xunit;

namespace SM_System.Tables.Tests
{
    public class StudentTests
    {
        [Fact]
        public void Gpa_WithoutModules_ShouldReturnZero()
        {
            var student = new Student();

            var gpa = student.Gpa;

            gpa.Should().Be(0.0);
        }

        [Fact]
        public void Gpa_WithSingleModule_ShouldCalculateGpa()
        {
            var student = new Student();
            var module = new StudentModules { Credit = 3, Grade = "A-" };
            student.getModules = new ObservableCollection<StudentModules> { module };

            var gpa = student.CalcGPA();
            gpa.Should().BeApproximately(3.7, 0.01);
        }

        [Fact]
        public void Gpa_WithMultipleModules_ShouldCalculateGpa()
        {
            var student = new Student();
            var module1 = new StudentModules { Credit = 4, Grade = "B+" };
            var module2 = new StudentModules { Credit = 3, Grade = "A-" };
            var module3 = new StudentModules { Credit = 2, Grade = "C" };
            student.getModules = new ObservableCollection<StudentModules> { module1, module2, module3 };

            var gpa = student.CalcGPA();

            gpa.Should().BeApproximately(3.14, 0.01);
        }

        [Fact]
        public void Gpa_WithInvalidGrade_ShouldTreatAsZeroGradePoint()
        {
            var student = new Student();
            var module = new StudentModules { Credit = 3, Grade = "X" };
            student.studentModules = new ObservableCollection<StudentModules> { module };

            var gpa = student.Gpa;

            gpa.Should().Be(0.0);
        }

        [Fact]
        public void Gpa_WithModulesOfZeroCredit_ShouldExcludeFromCalculation()
        {
            var student = new Student();
            var module1 = new StudentModules { Credit = 3, Grade = "A-" };
            var module2 = new StudentModules { Credit = 0, Grade = "B+" }; var module3 = new StudentModules { Credit = 2, Grade = "C" };
            student.getModules = new ObservableCollection<StudentModules> { module1, module2, module3 };

            var gpa = student.Gpa;

            gpa.Should().BeApproximately(3.02, 0.01);
        }

        [Fact]
        public void Gpa_WithModulesOfInvalidGrade_ShouldExcludeFromCalculation()
        {
            var student = new Student();
            var module1 = new StudentModules { Credit = 4, Grade = "A+" };
            var module2 = new StudentModules { Credit = 3, Grade = "XYZ" }; var module3 = new StudentModules { Credit = 2, Grade = "B-" };
            student.getModules = new ObservableCollection<StudentModules> { module1, module2, module3 };

            var gpa = student.Gpa;

            gpa.Should().BeApproximately(3.56, 0.01);
        }

        [Fact]
        public void Gpa_WithAllZeroCredits_ShouldReturnZero()
        {
            var student = new Student();
            var module1 = new StudentModules { Credit = 0, Grade = "A" }; var module2 = new StudentModules { Credit = 0, Grade = "B+" }; student.getModules = new ObservableCollection<StudentModules> { module1, module2 };

            var gpa = student.Gpa;

            gpa.Should().Be(0.0);
        }

        [Fact]
        public void Gpa_WithLargeCreditValues_ShouldCalculateCorrectGpa()
        {
            var student = new Student();
            var module1 = new StudentModules { Credit = 5, Grade = "A" };
            var module2 = new StudentModules { Credit = 7, Grade = "B+" };
            var module3 = new StudentModules { Credit = 4, Grade = "C-" };
            student.getModules = new ObservableCollection<StudentModules> { module1, module2, module3 };

            var gpa = student.Gpa;

            gpa.Should().BeApproximately(3.12, 0.01);
        }

    }
}
