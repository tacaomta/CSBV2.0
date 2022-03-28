using ShipyardInfo.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
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

        [HttpPost]
        [Route("api/insert_main_engine")]
        public HttpResponseMessage InsertMainEngine([FromBody] MainEngine engine)
        {
            return con.InsertNewMainEngine(engine) ? Request.CreateResponse(HttpStatusCode.Created, engine
                ) : Request.CreateResponse(HttpStatusCode.Conflict);
        }

        [HttpPut]
        [Route("api/update_main_engine")]
        public HttpResponseMessage UpdateMainEngine([FromBody] MainEngine engine)
        {
            return con.UpdateMainEngine(engine) ? Request.CreateResponse(HttpStatusCode.OK, engine) : Request.CreateResponse(HttpStatusCode.NotFound);
        }

        [HttpDelete]
        [Route("api/delete_main_engine")]
        public HttpResponseMessage DeleteMainEngine([FromUri] string id)
        {
            return con.DeleteMainEngine(id) ? Request.CreateResponse(HttpStatusCode.OK, id) : Request.CreateResponse(HttpStatusCode.NotFound);
        }
    }
}