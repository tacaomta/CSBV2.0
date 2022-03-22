﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using ShipyardInfo.classes;

namespace CSBAPI.Controllers
{
    public class UserController : ApiController
    {
        private readonly Connection con = new Connection();


        [HttpGet]
        [Route("api/list_users")]
        public List<User> GetAll()
        {
            return con.GetAllUsers();
        }

        [HttpPost]
        [Route("api/insert_user")]
        public HttpResponseMessage InsertNewUser([FromBody] User user)
        {
            return con.InsertNewUser(user) ? Request.CreateResponse(HttpStatusCode.Created, user) : Request.CreateResponse(HttpStatusCode.Conflict);
        }

        [HttpPut]
        [Route("api/update_user")]
        public HttpResponseMessage UpdateUser([FromBody] User user)
        {
            return con.UpdateNewUser(user) ? Request.CreateResponse(HttpStatusCode.OK, user) : Request.CreateResponse(HttpStatusCode.NotFound);
        }

        [HttpDelete]
        [Route("api/delete_user")]
        public HttpResponseMessage DeleteUser(string id)
        {
            return con.DeleteUser(id) ? Request.CreateResponse(HttpStatusCode.OK, id) : Request.CreateResponse(HttpStatusCode.NotFound);
        }
    }
}