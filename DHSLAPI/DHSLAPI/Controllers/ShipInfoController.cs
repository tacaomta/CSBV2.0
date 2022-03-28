using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using ShipyardInfo.classes;

namespace DHSLAPI.Controllers
{
    public class ShipInfoController : ApiController
    {
        private readonly Connection con = new Connection();

        [HttpGet]
        [Route("api/ships")]
        public List<OverviewInfo> GetAll(int region, string filter)
        {
            filter = filter == "*" ? "" : filter;
            return con.GetAll(region, filter);
        }
    }
}