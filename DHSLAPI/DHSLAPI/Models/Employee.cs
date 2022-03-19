using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSBAPI.Models
{
    public class Employee
    {
        public int ID { get; set; }

        public string CMND { get; set; }

        public string Name { get; set; }

        public DateTime DateBird { get; set; }

        public string PlaceBird { get; set; }

        public string Avatar { get; set; }

        public bool Gender { get; set; }

        public string Address { get; set; }

        public string Phone { get; set; }
    }
}