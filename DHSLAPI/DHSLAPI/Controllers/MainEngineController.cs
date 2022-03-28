using ShipyardInfo.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace DHSLAPI.Controllers
{
    public class MainEngineController : ApiController
    {
        private readonly Connection con = new Connection();

        [HttpGet]
        [Route("api/main_engine")]
        public List<MainEngine> GetAll(string imo)
        {
            return con.GetMainEngineByIMO(imo);
        }
    }
}