using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSB.Models
{
    public enum Role
    {
        Admin,
        User
    }
    public class User
    {
        public string UserName { get; set; }

        public string Password { get; set; }

        public string Fullname { get; set; }

        public Role Role { get; set; }

        public string LastUpdate { get; set; }

        public string Created { get; set; }

        public bool LOCKED { get; set; }

        public string ID { get; set; }
    }
    public class RootUser
    {
        public string status { get; set; }

        public User[] data { get; set; }
    }
}