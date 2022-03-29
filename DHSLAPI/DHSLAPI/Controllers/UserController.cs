using System;
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
        /// <summary>
        /// Đăng nhập
        /// </summary>
        /// <param name="user">Đối tượng User chứa tên đăng nhập (username) và mật khẩu (password)</param>
        /// <returns></returns>
        [HttpGet]
        [Route("api/user_login")]       
        public User Login([FromBody] User user)
        {
            return con.Login(new User()
            {
                UserName=user.UserName,
                Password=Helper.EnCode(user.Password)
            });
        }

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
            user.ID = Helper.EnCode(DateTime.Now.ToString("yyyy-mm-dd:hh-mm-ss"));
            return con.InsertNewUser(user) ? Request.CreateResponse(HttpStatusCode.Created, user) : Request.CreateResponse(HttpStatusCode.Conflict);
        }

        [HttpPut]
        [Route("api/update_user")]
        public HttpResponseMessage UpdateUser([FromBody] User user)
        {
            if (user.Password != string.Empty)
                user.Password = Helper.EnCode(user.Password);
            return con.UpdateNewUser(user) ? Request.CreateResponse(HttpStatusCode.OK, user) : Request.CreateResponse(HttpStatusCode.NotFound);
        }

        [HttpDelete]
        [Route("api/delete_user")]
        public HttpResponseMessage DeleteUser([FromUri] string id)
        {
            return con.DeleteUser(id) ? Request.CreateResponse(HttpStatusCode.OK, id) : Request.CreateResponse(HttpStatusCode.NotFound);
        }
    }
}