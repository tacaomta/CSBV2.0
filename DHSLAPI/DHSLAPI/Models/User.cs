using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShipyardInfo.classes
{
    public class Role
    {
        public string RoleId { get; set; }
        public string RoleName { get; set; }
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
}
