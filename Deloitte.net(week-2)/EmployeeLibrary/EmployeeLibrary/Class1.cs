using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeLibrary
{
    public class Employee
    {
        int EmpID;
        string name;

        public int EmpID1
        {
            get
            {
                return EmpID;
            }

            set
            {
                EmpID = value;
            }
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public Employee()
        {

        }

        public Employee(string name,int id)
        {
            this.name = name;
            EmpID = id;
        }

        public void ShowData()
        {
            Console.WriteLine("name:"+name);
            Console.WriteLine("id:"+EmpID);
        }

    }
}
