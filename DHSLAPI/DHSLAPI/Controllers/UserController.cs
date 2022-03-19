using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using ShipyardInfo.classes;

namespace CSBAPI.Controllers
{
    public class UserController : ApiController
    {
        [HttpGet]
        [Route("api/Users")]
        public List<User> GetAll()
        {
            return new List<User>();
        }
    }
}