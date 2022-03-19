using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace ShipyardInfo.classes
{
    public class Connection
    {
        private static string connectionstring;
        private SqlConnection con;

        public Connection()
        {
            //Application.StartupPath
            //connectionstring = string.Format(@"Server = (localdb)\v11.0; Integrated Security = true;AttachDbFileName = {0}\data\Shipyard.mdf;", Application.StartupPath);
            // connectionstring = "Server=.\\SQLEXPRESS;Database=Shipyard;User Id=sa;Password=1;";
            //connectionstring = @"Data Source=.\sqlexpress;Initial Catalog=E:\INDIVIDUAL\SHIPYARDINFO\SHIPYARDINFO\BIN\DEBUG\DATA\SHIPYARD.MDF;Integrated Security=True";
            connectionstring = ConfigurationManager.ConnectionStrings["CSB_ConnectionString"].ConnectionString;
            con = new SqlConnection(connectionstring);
        }

        public SqlConnection Con
        {
            get
            {
                return con;
            }
        }        

        public bool IsConnect()
        {
            try
            {
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }

        public  OverviewScrewSystem GetOverviewScrewSystem(string iD)
        {
            OverviewScrewSystem info = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("GetScrewSystemInfo");
                command.Connection = con;
                command.Parameters.AddWithValue("@ship_id", iD);
                command.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    info = new OverviewScrewSystem();
                    info.Anchor = int.Parse(ds.Tables[0].Rows[0]["anchor"].ToString());
                    info.Chain = int.Parse(ds.Tables[0].Rows[0]["chain"].ToString());
                    info.Winch = int.Parse(ds.Tables[0].Rows[0]["winch"].ToString());
                }
            }
            return info;
        }        

        public MainEngine GetMainEngineByItID(string iD)
        {
            MainEngine engine = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("select * from MainEngine where main_id=@main_id");
                command.Connection = con;
                command.Parameters.AddWithValue("@main_id", iD);
                command.CommandType = CommandType.Text;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    engine = new MainEngine();
                    engine.ID = ds.Tables[0].Rows[0]["main_id"].ToString();
                    engine.State = ds.Tables[0].Rows[0]["main_state"].ToString();
                    engine.Time = ds.Tables[0].Rows[0]["main_time"].ToString();
                }
            }
            return engine;
        }

        public bool UpdateMainEngineState1(SecondaryEngine engine)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateSecondaryEngineMoreInfo1");
                command.Parameters.AddWithValue("@second_id", engine.ID);
                command.Parameters.AddWithValue("@second_time1", engine.Time1);
                command.Parameters.AddWithValue("@second_state1", engine.State1);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public List<User> GetAllUsers()
        {
            List<User> users = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("select * from Users left join Role on Users.user_role = Role.role_id order by user_name");
                command.Connection = con;
                command.CommandType = CommandType.Text;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    users = new List<User>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        users.Add(new User()
                        {
                            UserName = ds.Tables[0].Rows[i]["user_name"].ToString(),
                            Created = ds.Tables[0].Rows[i]["user_created"].ToString(),
                            Password = ds.Tables[0].Rows[i]["user_password"].ToString(),
                            Fullname = ds.Tables[0].Rows[i]["user_fullname"].ToString(),
                            LastUpdate = ds.Tables[0].Rows[i]["user_lastupdate"].ToString(),
                            Role = ds.Tables[0].Rows[i]["role_name"].ToString() == "Admin" ? Role.Admin : Role.User,
                            ID = ds.Tables[0].Rows[i]["user_id"].ToString()
                        });
                    }                    
                }
            }
            return users;
        }

        public bool UpdateMainEngineState2(SecondaryEngine engine)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateSecondaryEngineMoreInfo2");
                command.Parameters.AddWithValue("@second_id", engine.ID);
                command.Parameters.AddWithValue("@second_time2", engine.Time2);
                command.Parameters.AddWithValue("@second_state2", engine.State2);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool UpdateNewUser(User user)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateUser");
                command.Parameters.AddWithValue("@user_id", user.ID);
                command.Parameters.AddWithValue("@user_fullname", user.Fullname);
                command.Parameters.AddWithValue("@user_role", user.Role == Role.Admin ? "AD" : "US");
                command.Parameters.AddWithValue("@user_lastupdate", user.LastUpdate);
                command.Parameters.AddWithValue("@user_password", user.Password);
                command.Parameters.AddWithValue("@isLocked", user.LOCKED);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }       

        public bool InsertNewUser(User user)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("InsertNewUser");
                command.Parameters.AddWithValue("@user_id", user.ID);
                command.Parameters.AddWithValue("@user_name", user.UserName);
                command.Parameters.AddWithValue("@user_fullname", user.Fullname);
                command.Parameters.AddWithValue("@user_role", user.Role == Role.Admin ? "AD" : "US");
                command.Parameters.AddWithValue("@user_created", user.Created);
                command.Parameters.AddWithValue("@user_lastupdate", user.LastUpdate);
                command.Parameters.AddWithValue("@user_password", user.Password);
                command.Parameters.AddWithValue("@isLocked", user.LOCKED);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool Excute(string text)
        {
            bool isSuccess = false;
            if(IsConnect())
            {
                SqlCommand command = new SqlCommand(text);
                command.Connection = con;
                command.CommandType = CommandType.Text;
                if (command.ExecuteNonQuery() > 0)
                    isSuccess = true;
            }
            return isSuccess;
        }

        public CaptainInfo GetDetailInfoOfCaptain(string iD)
        {
            CaptainInfo cin = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("GetDetailInfoOfCaptain");
                command.Connection = con;
                command.Parameters.AddWithValue("@capt_id", iD);
                command.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    cin = new CaptainInfo()
                    {
                        ID = ds.Tables[0].Rows[0]["capt_id"].ToString(),
                        Birthday = ds.Tables[0].Rows[0]["capt_birthday"].ToString(),
                        Fullname = ds.Tables[0].Rows[0]["fullname"].ToString(),
                        Function = ds.Tables[0].Rows[0]["capt_function"].ToString(),
                        Gender = ds.Tables[0].Rows[0]["capt_gender"].ToString() == "True" ? true : false,
                        Residence = ds.Tables[0].Rows[0]["capt_residence"].ToString()
                    };
                }
            }
            return cin;
        }

        public bool DeleteUser(string v)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("delete from Users where user_id = @user_id");
                command.Parameters.AddWithValue("@user_id", v);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public ShipInfo GetShipInfoByIMO(string iMO)
        {
            ShipInfo ship = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("GetShipInfoByIMO");
                command.Connection = con;
                command.Parameters.AddWithValue("@ship_id", iMO);
                command.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    ship = new ShipInfo()
                    {
                        RegistrationNumber = ds.Tables[0].Rows[0]["ship_registration_number"].ToString(),
                        Personel = int.Parse(ds.Tables[0].Rows[0]["ship_personel"].ToString()),
                        Name = ds.Tables[0].Rows[0]["ship_name"].ToString(),
                        Weight = ds.Tables[0].Rows[0]["ship_weight"].ToString(),
                        Fuel = ds.Tables[0].Rows[0]["ship_fuel"].ToString(),
                        Time = ds.Tables[0].Rows[0]["ship_journeytime"].ToString(),
                        Water = ds.Tables[0].Rows[0]["ship_water"].ToString(),
                        Speed = ds.Tables[0].Rows[0]["ship_speed"].ToString(),
                        Image = ds.Tables[0].Rows[0]["img"].ToString(),
                        LaunchYear = ds.Tables[0].Rows[0]["ship_launch"].ToString() == "" ? 0 : int.Parse(ds.Tables[0].Rows[0]["ship_launch"].ToString()),
                        Captain = ds.Tables[0].Rows[0]["ship_captain"].ToString() == "" ? null : new CaptainInfo()
                        {
                            ID = ds.Tables[0].Rows[0]["capt_id"].ToString(),
                            Birthday = ds.Tables[0].Rows[0]["capt_birthday"].ToString(),
                            Fullname = ds.Tables[0].Rows[0]["fullname"].ToString(),
                            Function = ds.Tables[0].Rows[0]["capt_function"].ToString(),
                            Gender = ds.Tables[0].Rows[0]["capt_gender"].ToString() == "True" ? true : false,
                            Residence = ds.Tables[0].Rows[0]["capt_residence"].ToString()
                        },
                        Region = int.Parse(ds.Tables[0].Rows[0]["ship_region"].ToString()),
                        ID = ds.Tables[0].Rows[0]["ship_id"].ToString(),
                        RegistrationPlace = ds.Tables[0].Rows[0]["ship_placeregistration"].ToString(),
                        RegistrationDate = ds.Tables[0].Rows[0]["ship_dateregistration"].ToString(),
                        Draught = ds.Tables[0].Rows[0]["ship_draught"].ToString(),
                        Material = ds.Tables[0].Rows[0]["ship_material"].ToString(),
                        Wide = ds.Tables[0].Rows[0]["ship_wide"].ToString(),
                        Width = ds.Tables[0].Rows[0]["ship_width"].ToString(),
                        Created = ds.Tables[0].Rows[0]["ship_created"].ToString(),
                        Updated  = ds.Tables[0].Rows[0]["ship_updated"].ToString()
                    };
                }
            }
            return ship;
        }        

        public List<MainEngine> GetMainEngineByIMO(string IMO)
        {
            List<MainEngine> mes = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("select * from MainEngine where main_imo = @main_imo");
                command.Connection = con;
                command.Parameters.AddWithValue("@main_imo", IMO);
                command.CommandType = CommandType.Text;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    mes = new List<MainEngine>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        mes.Add(new MainEngine()
                        {
                            ID = ds.Tables[0].Rows[i]["main_id"].ToString(),
                            ProductionYear = ds.Tables[0].Rows[i]["main_productionyear"].ToString() == "" ? -1 : int.Parse(ds.Tables[0].Rows[i]["main_productionyear"].ToString()),
                            Name = ds.Tables[0].Rows[i]["main_type"].ToString(),
                            Origin = ds.Tables[0].Rows[i]["main_origin"].ToString(),
                            Power = ds.Tables[0].Rows[i]["main_power"].ToString(),
                            Pittong = int.Parse(ds.Tables[0].Rows[i]["main_pittong"].ToString()),
                            Diameter = ds.Tables[0].Rows[i]["main_diametter"].ToString(),
                            Speed = ds.Tables[0].Rows[i]["main_speed"].ToString(),
                            Waste = ds.Tables[0].Rows[i]["main_waste"].ToString(),
                            Note = ds.Tables[0].Rows[i]["main_note"].ToString(),
                            Ship = new ShipInfo() { ID = ds.Tables[0].Rows[i]["main_imo"].ToString() }
                        });
                    }
                }
            }
            return mes;
        }

        public bool UpdateMainEngine(MainEngine engine)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateNewMainEngine");
                command.Parameters.AddWithValue("@main_id", engine.ID);
                command.Parameters.AddWithValue("@main_type", engine.Name);
                command.Parameters.AddWithValue("@main_productionyear", engine.ProductionYear);
                command.Parameters.AddWithValue("@main_origin", engine.Origin);
                command.Parameters.AddWithValue("@main_power", engine.Power);
                command.Parameters.AddWithValue("@main_waste", engine.Waste);
                command.Parameters.AddWithValue("@main_speed", engine.Speed);
                command.Parameters.AddWithValue("@main_pittong", engine.Pittong);
                command.Parameters.AddWithValue("@main_diametter", engine.Diameter);
                command.Parameters.AddWithValue("@main_note", engine.Note);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool UpdateMainEngineState(MainEngine engine)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateMainEngineState");
                command.Parameters.AddWithValue("@main_id", engine.ID);
                command.Parameters.AddWithValue("@main_time", engine.Time);
                command.Parameters.AddWithValue("@main_state", engine.State);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool DeleteScrew(string v)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("delete from ScrewSystem where scr_id = @scr_id");
                command.Parameters.AddWithValue("@scr_id", v);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool InsertNewSecondaryEngine(SecondaryEngine engine)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("InsertSecondaryEngine");
                command.Parameters.AddWithValue("@second_id", engine.ID);
                command.Parameters.AddWithValue("@second_diesel", engine.Name);
                command.Parameters.AddWithValue("@second_productionyear", engine.ProductionYear);
                command.Parameters.AddWithValue("@second_origin", engine.Origin);
                command.Parameters.AddWithValue("@second_power", engine.Power);
                command.Parameters.AddWithValue("@second_waste", engine.Waste);
                command.Parameters.AddWithValue("@second_speed", engine.Speed);
                command.Parameters.AddWithValue("@second_voltage", engine.Voltage);
                command.Parameters.AddWithValue("@second_intensity", engine.Intensity);
                command.Parameters.AddWithValue("@second_shipid", engine.Ship.ID);
                command.Parameters.AddWithValue("@second_machine", engine.Machine);
                command.Parameters.AddWithValue("@second_year", engine.Year);
                command.Parameters.AddWithValue("@second_power2", engine.Power2);
                command.Parameters.AddWithValue("@second_origin2", engine.Origin2);
                command.Parameters.AddWithValue("@second_speed2", engine.Speed2);
                command.Parameters.AddWithValue("@second_cosphi", engine.Cosphi);
                command.Parameters.AddWithValue("@second_note", engine.Note);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool DeleteShip(string v)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("delete from ShipInfo where ship_id = @ship_id");
                command.Parameters.AddWithValue("@ship_id", v);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool UpdateSecondaryEngine(SecondaryEngine engine)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateSecondaryEngine");
                command.Parameters.AddWithValue("@second_id", engine.ID);
                command.Parameters.AddWithValue("@second_diesel", engine.Name);
                command.Parameters.AddWithValue("@second_productionyear", engine.ProductionYear);
                command.Parameters.AddWithValue("@second_origin", engine.Origin);
                command.Parameters.AddWithValue("@second_power", engine.Power);
                command.Parameters.AddWithValue("@second_waste", engine.Waste);
                command.Parameters.AddWithValue("@second_speed", engine.Speed);
                command.Parameters.AddWithValue("@second_voltage", engine.Voltage);
                command.Parameters.AddWithValue("@second_intensity", engine.Intensity);
                command.Parameters.AddWithValue("@second_machine", engine.Machine);
                command.Parameters.AddWithValue("@second_year", engine.Year);
                command.Parameters.AddWithValue("@second_power2", engine.Power2);
                command.Parameters.AddWithValue("@second_origin2", engine.Origin2);
                command.Parameters.AddWithValue("@second_speed2", engine.Speed2);
                command.Parameters.AddWithValue("@second_cosphi", engine.Cosphi);
                command.Parameters.AddWithValue("@second_note", engine.Note);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }        

        public bool InsertNewMainEngine(MainEngine engine)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("InsertNewMainEngine");
                command.Parameters.AddWithValue("@main_id", engine.ID);
                command.Parameters.AddWithValue("@main_type", engine.Name);
                command.Parameters.AddWithValue("@main_productionyear", engine.ProductionYear);
                command.Parameters.AddWithValue("@main_origin", engine.Origin);
                command.Parameters.AddWithValue("@main_power", engine.Power);
                command.Parameters.AddWithValue("@main_waste", engine.Waste);
                command.Parameters.AddWithValue("@main_speed", engine.Speed);
                command.Parameters.AddWithValue("@main_pittong", engine.Pittong);
                command.Parameters.AddWithValue("@main_diametter", engine.Diameter);
                command.Parameters.AddWithValue("@main_imo", engine.Ship.ID);
                command.Parameters.AddWithValue("@main_note", engine.Note);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public void DisConnect()
        {
            if (con.State != ConnectionState.Closed)
            {
                con.Dispose();
            }
        }

        public User Login(User logingUser)
        {
            User user = null;
            SqlCommand cmd = new SqlCommand("Login");
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", logingUser.UserName);
            cmd.Parameters.AddWithValue("@userpassword", logingUser.Password);
            DataSet ds = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds);
            if(ds.Tables[0].Rows.Count>0)
            {
                user = new User()
                {
                    UserName = ds.Tables[0].Rows[0]["user_name"].ToString(),
                    Password = ds.Tables[0].Rows[0]["user_password"].ToString(),
                    Fullname = ds.Tables[0].Rows[0]["user_fullname"].ToString(),
                    Role = ds.Tables[0].Rows[0]["role_name"].ToString().ToUpper().Equals("ADMIN") ? Role.Admin : Role.User
                };
            }
            return user;
        }        

        public bool UpdateMarineWeapon(MarineWeapon weapon)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UPDATE Weapon set wp_name=@wp_name, wp_type=@wp_type, wp_number=@wp_number, wp_origin=@wp_origin, wp_power=@wp_power, wp_function=@wp_function where wp_id=@wp_id");
                command.Parameters.AddWithValue("@wp_id", weapon.ID);
                command.Parameters.AddWithValue("@wp_name", weapon.Name);
                command.Parameters.AddWithValue("@wp_type", weapon.Type);
                command.Parameters.AddWithValue("@wp_number", weapon.Quantity);
                command.Parameters.AddWithValue("@wp_origin", weapon.Origin);
                command.Parameters.AddWithValue("@wp_power", weapon.Power);
                command.Parameters.AddWithValue("@wp_function", weapon.Function);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public List<MarineWeapon> InsertListWeapons(List<MarineWeapon> nks)
        {
            List<MarineWeapon> success = null;
            if (IsConnect())
            {
                success = new List<MarineWeapon>();
                SqlCommand command = new SqlCommand("INSERT INTO Weapon(wp_id, wp_imo, wp_name, wp_type, wp_number, wp_origin, wp_power, wp_function) VALUES (@wp_id, @wp_imo, @wp_name, @wp_type, @wp_number, @wp_origin, @wp_power, @wp_function)");
                command.CommandType = CommandType.Text;
                command.Connection = con;
                for (int i = 0; i < nks.Count; i++)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@wp_id", nks[i].ID);
                    command.Parameters.AddWithValue("@wp_imo", nks[i].Ship.ID);
                    command.Parameters.AddWithValue("@wp_name", nks[i].Name);
                    command.Parameters.AddWithValue("@wp_type", nks[i].Type);
                    command.Parameters.AddWithValue("@wp_number", nks[i].Quantity);
                    command.Parameters.AddWithValue("@wp_origin", nks[i].Origin);
                    command.Parameters.AddWithValue("@wp_power", nks[i].Power);
                    command.Parameters.AddWithValue("@wp_function", nks[i].Function);
                    if (command.ExecuteNonQuery() > 0)
                        success.Add(nks[i]);
                }                
            }
            return success;
        }

        public List<SecondaryEngine> InsertListSecondaryEngine(List<SecondaryEngine> nks)
        {
            List<SecondaryEngine> success = null;
            if (IsConnect())
            {
                success = new List<SecondaryEngine>();
                SqlCommand command = new SqlCommand("InsertSecondaryEngine");
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                for (int i = 0; i < nks.Count; i++)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@second_id", nks[i].ID);
                    command.Parameters.AddWithValue("@second_diesel", nks[i].Name);
                    command.Parameters.AddWithValue("@second_productionyear", nks[i].ProductionYear);
                    command.Parameters.AddWithValue("@second_origin", nks[i].Origin);
                    command.Parameters.AddWithValue("@second_power", nks[i].Power);
                    command.Parameters.AddWithValue("@second_waste", nks[i].Waste);
                    command.Parameters.AddWithValue("@second_speed", nks[i].Speed);
                    command.Parameters.AddWithValue("@second_voltage", nks[i].Voltage);
                    command.Parameters.AddWithValue("@second_intensity", nks[i].Intensity);
                    command.Parameters.AddWithValue("@second_shipid", nks[i].Ship.ID);
                    command.Parameters.AddWithValue("@second_machine", nks[i].Machine);
                    command.Parameters.AddWithValue("@second_year", nks[i].Year);
                    command.Parameters.AddWithValue("@second_power2", nks[i].Power2);
                    command.Parameters.AddWithValue("@second_origin2", nks[i].Origin2);
                    command.Parameters.AddWithValue("@second_speed2", nks[i].Speed2);
                    command.Parameters.AddWithValue("@second_cosphi", nks[i].Cosphi);
                    command.Parameters.AddWithValue("@second_note", nks[i].Note);
                    if (command.ExecuteNonQuery() > 0)
                        success.Add(nks[i]);
                }                
            }
            return success;
        }

        public List<MainEngine> InsertListMainEngine(List<MainEngine> nks)
        {
            List<MainEngine> success = null;
            if (IsConnect())
            {
                success = new List<MainEngine>();
                SqlCommand command = new SqlCommand("InsertNewMainEngine");
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                for (int i = 0; i < nks.Count; i++)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@main_id", nks[i].ID);
                    command.Parameters.AddWithValue("@main_type", nks[i].Name);
                    command.Parameters.AddWithValue("@main_productionyear", nks[i].ProductionYear);
                    command.Parameters.AddWithValue("@main_origin", nks[i].Origin);
                    command.Parameters.AddWithValue("@main_power", nks[i].Power);
                    command.Parameters.AddWithValue("@main_waste", nks[i].Waste);
                    command.Parameters.AddWithValue("@main_speed", nks[i].Speed);
                    command.Parameters.AddWithValue("@main_pittong", nks[i].Pittong);
                    command.Parameters.AddWithValue("@main_diametter", nks[i].Diameter);
                    command.Parameters.AddWithValue("@main_imo", nks[i].Ship.ID);
                    command.Parameters.AddWithValue("@main_note", nks[i].Note);
                    if (command.ExecuteNonQuery() > 0)
                        success.Add(nks[i]);
                }
            }
            return success;
        }

        public bool UpdatePassword(User user, string newPassword)
        {
            if (IsConnect())
            {
                SqlCommand cmd = null;
                cmd = new SqlCommand("select count(*) from Users where UPPER(user_name) = @user_name and user_password = @user_password");
                cmd.Parameters.AddWithValue("@user_password", user.Password);
                cmd.Parameters.AddWithValue("@user_name", user.UserName);
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                object a = cmd.ExecuteScalar();
                if (int.Parse(cmd.ExecuteScalar().ToString()) > 0)
                {
                    string sql = "UPDATE Users SET user_password = @user_password WHERE UPPER(user_name) = @user_name";
                    cmd = new SqlCommand(sql);
                    cmd.Parameters.AddWithValue("@user_password", newPassword);
                    cmd.Parameters.AddWithValue("@user_name", user.UserName);
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    if (cmd.ExecuteNonQuery() > 0)
                        return true;
                    else
                        return false;
                }
                else
                    return false;
            }
            return false;
        }        

        public bool DeleteMainEngine(string v)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("delete from MainEngine where main_id = @main_id");
                command.Parameters.AddWithValue("@main_id", v);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public List<MarineWeapon> GetMarineWeaponsByIMO(string IMO)
        {
            List<MarineWeapon> wps = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("select * from Weapon where wp_imo = @wp_imo");
                command.Connection = con;
                command.Parameters.AddWithValue("@wp_imo", IMO);
                command.CommandType = CommandType.Text;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if(ds.Tables[0].Rows.Count>0)
                {
                    wps = new List<MarineWeapon>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        wps.Add(new MarineWeapon()
                        {
                            ID = ds.Tables[0].Rows[i]["wp_id"].ToString(),
                            Function = ds.Tables[0].Rows[i]["wp_function"].ToString(),
                            Name = ds.Tables[0].Rows[i]["wp_name"].ToString(),
                            Origin = ds.Tables[0].Rows[i]["wp_origin"].ToString(),
                            Power = ds.Tables[0].Rows[i]["wp_power"].ToString(),
                            Quantity = ds.Tables[0].Rows[i]["wp_number"].ToString() == "" ? 0 : int.Parse(ds.Tables[0].Rows[i]["wp_number"].ToString()),
                            Type = ds.Tables[0].Rows[i]["wp_type"].ToString(),
                            Ship = new ShipInfo() { ID = ds.Tables[0].Rows[i]["wp_imo"].ToString()}
                        });
                    }
                }
            }
            return wps;
        }

        public bool DeleteMarineWeapon(string ID)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("delete from Weapon where wp_id = @wp_id");
                command.Parameters.AddWithValue("@wp_id", ID);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool InsertNewMarineWeapon(MarineWeapon marine)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("INSERT INTO Weapon(wp_id, wp_imo, wp_name, wp_type, wp_number, wp_origin, wp_power, wp_function) VALUES (@wp_id, @IMO, @wp_name, @wp_type, @wp_number, @wp_origin, @wp_power, @wp_function)");
                command.Parameters.AddWithValue("@wp_id", marine.ID);
                command.Parameters.AddWithValue("@IMO", marine.Ship.ID);
                command.Parameters.AddWithValue("@wp_name", marine.Name);
                command.Parameters.AddWithValue("@wp_type", marine.Type);
                command.Parameters.AddWithValue("@wp_number", marine.Quantity);
                command.Parameters.AddWithValue("@wp_origin", marine.Origin);
                command.Parameters.AddWithValue("@wp_power", marine.Power);
                command.Parameters.AddWithValue("@wp_function", marine.Function);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public List<OverviewInfo> GetAll(string filter, int region)
        {
            List<OverviewInfo> oi = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("GetMainSheet");
                command.Connection = con;
                command.Parameters.AddWithValue("@filter", filter);
                command.Parameters.AddWithValue("@ship_region", region);
                command.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    oi = new List<OverviewInfo>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        oi.Add(new OverviewInfo()
                        {
                            Ship = new ShipInfo()
                            {
                                Name = ds.Tables[0].Rows[i]["ship_name"].ToString(),
                                ID = ds.Tables[0].Rows[i]["ship_id"].ToString(),
                                Material = ds.Tables[0].Rows[i]["ship_material"].ToString(),
                                Created = ds.Tables[0].Rows[i]["ship_created"].ToString(),
                                Updated = ds.Tables[0].Rows[i]["ship_updated"].ToString(),
                                Region = int.Parse(ds.Tables[0].Rows[i]["ship_region"].ToString())
                            },
                            MainEngine = int.Parse(ds.Tables[0].Rows[i]["ship_mainengine"].ToString()),
                            SecondaryEngine = int.Parse(ds.Tables[0].Rows[i]["ship_secondaryengine"].ToString()),
                            Weapon = int.Parse(ds.Tables[0].Rows[i]["ship_weapon"].ToString()),
                            Anchor = int.Parse(ds.Tables[0].Rows[i]["ship_anchor"].ToString()),
                            MotoBoat = int.Parse(ds.Tables[0].Rows[i]["ship_motoboat"].ToString()),
                            Screw  = int.Parse(ds.Tables[0].Rows[i]["ship_screw"].ToString()),
                            LifeSaving = int.Parse(ds.Tables[0].Rows[i]["ship_lifesaving"].ToString()),
                            Other = int.Parse(ds.Tables[0].Rows[i]["ship_other"].ToString()),
                            Supplies = int.Parse(ds.Tables[0].Rows[i]["ship_supply"].ToString())
                        });
                    }
                }
            }
            return oi;
        }

        public List<ShipInfo> GetAllShipInfo()
        {
            List<ShipInfo> si = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("GetMainSheet");
                command.Connection = con;
                command.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    si = new List<ShipInfo>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        si.Add(new ShipInfo()
                        {

                        });
                    }
                }
            }
            return si;
        }
        /// <summary>
        /// Lấy danh mục máy phụ
        /// </summary>
        /// <param name="IMO">Số IMO của tàu có máy phụ</param>
        /// <returns></returns>
        public List<SecondaryEngine> GetSecondaryEngineByIMO(string IMO)
        {
            List<SecondaryEngine> ses = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("select * from SecondaryEngine where second_imo = @second_imo");
                command.Connection = con;
                command.Parameters.AddWithValue("@second_imo", IMO);
                command.CommandType = CommandType.Text;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    ses = new List<SecondaryEngine>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        ses.Add(new SecondaryEngine()
                        {
                            ID = ds.Tables[0].Rows[i]["second_id"].ToString(),
                            Intensity = ds.Tables[0].Rows[i]["second_intensity"].ToString(),
                            Name = ds.Tables[0].Rows[i]["second_diesel"].ToString(),
                            Origin = ds.Tables[0].Rows[i]["second_origin"].ToString(),
                            Power = ds.Tables[0].Rows[i]["second_power"].ToString(),
                            ProductionYear = ds.Tables[0].Rows[i]["second_productionyear"].ToString() == "" ? -1 : int.Parse(ds.Tables[0].Rows[i]["second_productionyear"].ToString()),
                            Speed = ds.Tables[0].Rows[i]["second_speed"].ToString(),
                            Waste = ds.Tables[0].Rows[i]["second_waste"].ToString(),
                            Voltage  = ds.Tables[0].Rows[i]["second_voltage"].ToString(),
                            Ship = new ShipInfo() { ID = ds.Tables[0].Rows[i]["second_imo"].ToString()},
                            Cosphi = ds.Tables[0].Rows[i]["second_cosphi"].ToString(),
                            Machine = ds.Tables[0].Rows[i]["second_machine"].ToString(),
                            Note = ds.Tables[0].Rows[i]["second_note"].ToString(),
                            Origin2 = ds.Tables[0].Rows[i]["second_origin2"].ToString(),
                            Power2 = ds.Tables[0].Rows[i]["second_power2"].ToString(),
                            Speed2 = ds.Tables[0].Rows[i]["second_speed2"].ToString(),
                            State1 = ds.Tables[0].Rows[i]["second_state1"].ToString(),
                            State2 = ds.Tables[0].Rows[i]["second_state2"].ToString(),
                            Time1 = ds.Tables[0].Rows[i]["second_time1"].ToString(),
                            Time2 = ds.Tables[0].Rows[i]["second_time2"].ToString(),
                            Year = ds.Tables[0].Rows[i]["second_year"].ToString()
                        });
                    }
                }
            }
            return ses;
        }

        public SecondaryEngine GetSecondaryEngineByItID(string ID)
        {
            SecondaryEngine ses = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("select * from SecondaryEngine where second_id = @second_id");
                command.Connection = con;
                command.Parameters.AddWithValue("@second_id", ID);
                command.CommandType = CommandType.Text;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    ses = new SecondaryEngine();
                    ses.ID = ds.Tables[0].Rows[0]["second_id"].ToString();
                    ses.Intensity = ds.Tables[0].Rows[0]["second_intensity"].ToString();
                    ses.Name = ds.Tables[0].Rows[0]["second_diesel"].ToString();
                    ses.Origin = ds.Tables[0].Rows[0]["second_origin"].ToString();
                    ses.Power = ds.Tables[0].Rows[0]["second_power"].ToString();
                    ses.ProductionYear = ds.Tables[0].Rows[0]["second_productionyear"].ToString() == "" ? -1 : int.Parse(ds.Tables[0].Rows[0]["second_productionyear"].ToString());
                    ses.Speed = ds.Tables[0].Rows[0]["second_speed"].ToString();
                    ses.Waste = ds.Tables[0].Rows[0]["second_waste"].ToString();
                    ses.Voltage = ds.Tables[0].Rows[0]["second_voltage"].ToString();
                    ses.Ship = new ShipInfo() { ID = ds.Tables[0].Rows[0]["second_imo"].ToString() };
                    ses.Cosphi = ds.Tables[0].Rows[0]["second_cosphi"].ToString();
                    ses.Machine = ds.Tables[0].Rows[0]["second_machine"].ToString();
                    ses.Note = ds.Tables[0].Rows[0]["second_note"].ToString();
                    ses.Origin2 = ds.Tables[0].Rows[0]["second_origin2"].ToString();
                    ses.Power2 = ds.Tables[0].Rows[0]["second_power2"].ToString();
                    ses.Speed2 = ds.Tables[0].Rows[0]["second_speed2"].ToString();
                    ses.State1 = ds.Tables[0].Rows[0]["second_state1"].ToString();
                    ses.State2 = ds.Tables[0].Rows[0]["second_state2"].ToString();
                    ses.Time1 = ds.Tables[0].Rows[0]["second_time1"].ToString();
                    ses.Time2 = ds.Tables[0].Rows[0]["second_time2"].ToString();
                    ses.Year = ds.Tables[0].Rows[0]["second_year"].ToString();
                }
            }
            return ses;
        }

        public bool DeleteSecondaryEngine(string v)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("delete from SecondaryEngine where second_id = @second_id");
                command.Parameters.AddWithValue("@second_id", v);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool InsertNewShip(ShipInfo ship)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("InsertNewShip");
                command.Parameters.AddWithValue("@ship_id", ship.ID);
                command.Parameters.AddWithValue("@ship_name", ship.Name);
                command.Parameters.AddWithValue("@ship_weight", ship.Weight);
                command.Parameters.AddWithValue("@ship_fuel", ship.Fuel);
                command.Parameters.AddWithValue("@ship_water", ship.Water);
                command.Parameters.AddWithValue("@ship_personel", ship.Personel);
                command.Parameters.AddWithValue("@ship_captain", ship.Captain.ID);
                command.Parameters.AddWithValue("@ship_speed", ship.Speed);
                command.Parameters.AddWithValue("@ship_journeytime", ship.Time);
                command.Parameters.AddWithValue("@ship_launch", ship.LaunchYear);
                command.Parameters.AddWithValue("@img", ship.Image);
                command.Parameters.AddWithValue("@ship_region", ship.Region);
                command.Parameters.AddWithValue("@ship_dateregistration", ship.RegistrationDate);
                command.Parameters.AddWithValue("@ship_placeregistration", ship.RegistrationPlace);
                command.Parameters.AddWithValue("@ship_registration_number", ship.RegistrationNumber);
                command.Parameters.AddWithValue("@ship_created", ship.Created);
                command.Parameters.AddWithValue("@ship_updated", ship.Updated);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool UpdateShipInfo(ShipInfo ship)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateShip");
                command.Parameters.AddWithValue("@ship_id", ship.ID);
                command.Parameters.AddWithValue("@ship_region", ship.Region);
                command.Parameters.AddWithValue("@ship_name", ship.Name);
                command.Parameters.AddWithValue("@ship_weight", ship.Weight);
                command.Parameters.AddWithValue("@ship_fuel", ship.Fuel);
                command.Parameters.AddWithValue("@ship_water", ship.Water);
                command.Parameters.AddWithValue("@ship_personel", ship.Personel);
                command.Parameters.AddWithValue("@ship_captain", ship.Captain.ID);
                command.Parameters.AddWithValue("@ship_speed", ship.Speed);
                command.Parameters.AddWithValue("@ship_journeytime", ship.Time);
                command.Parameters.AddWithValue("@ship_launch", ship.LaunchYear);         
                command.Parameters.AddWithValue("@img", ship.Image);
                command.Parameters.AddWithValue("@ship_dateregistration", ship.RegistrationDate);
                command.Parameters.AddWithValue("@ship_placeregistration", ship.RegistrationPlace);
                command.Parameters.AddWithValue("@ship_registration_number", ship.RegistrationNumber);
                command.Parameters.AddWithValue("@ship_updated", ship.Updated);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }
        public bool UpdateShipBasicInfo(ShipInfo ship)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateShipBasicInfo");
                command.Parameters.AddWithValue("@ship_id", ship.ID);
                command.Parameters.AddWithValue("@ship_width", ship.Width);
                command.Parameters.AddWithValue("@ship_wide", ship.Wide);
                command.Parameters.AddWithValue("@ship_draught", ship.Draught);
                command.Parameters.AddWithValue("@ship_material", ship.Material);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public List<ShipInfo> InsertListShips(List<ShipInfo> nks)
        {
            List<ShipInfo> ships = null;
            if (IsConnect())
            {
                ships = new List<ShipInfo>();
                SqlCommand command = new SqlCommand("InsertNewShip");
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                for (int i = 0; i < nks.Count; i++)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@ship_id", nks[i].ID);
                    command.Parameters.AddWithValue("@ship_name", nks[i].Name);
                    command.Parameters.AddWithValue("@ship_weight", nks[i].Weight);
                    command.Parameters.AddWithValue("@ship_fuel", nks[i].Fuel);
                    command.Parameters.AddWithValue("@ship_water", nks[i].Water);
                    command.Parameters.AddWithValue("@ship_personel", nks[i].Personel);
                    command.Parameters.AddWithValue("@ship_captain", nks[i].Captain.ID);
                    command.Parameters.AddWithValue("@ship_speed", nks[i].Speed);
                    command.Parameters.AddWithValue("@ship_journeytime", nks[i].Time);
                    command.Parameters.AddWithValue("@ship_launch", nks[i].LaunchYear);
                    command.Parameters.AddWithValue("@img", nks[i].Image);
                    command.Parameters.AddWithValue("@ship_region", nks[i].Region);
                    command.Parameters.AddWithValue("@ship_dateregistration", nks[i].RegistrationDate);
                    command.Parameters.AddWithValue("@ship_placeregistration", nks[i].RegistrationPlace);
                    command.Parameters.AddWithValue("@ship_registration_number", nks[i].RegistrationNumber);
                    command.Parameters.AddWithValue("@ship_created", nks[i].Created);
                    command.Parameters.AddWithValue("@ship_updated", nks[i].Updated);
                    try
                    {
                        if (command.ExecuteNonQuery() > 0)
                        {
                            ships.Add(nks[i]);
                        }
                    }
                    catch
                    {
                        continue;
                    }
                }
            }
            return ships;
        }

        public List<ShipInfo> InsertListShips2(List<ShipInfo> nks)
        {
            List<ShipInfo> ships = null;
            if (IsConnect())
            {
                ships = new List<ShipInfo>();
                SqlCommand command = new SqlCommand("InsertNewShip1");
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                for (int i = 0; i < nks.Count; i++)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@ship_id", nks[i].ID);
                    command.Parameters.AddWithValue("@ship_name", nks[i].Name);
                    command.Parameters.AddWithValue("@ship_weight", nks[i].Weight);
                    command.Parameters.AddWithValue("@ship_fuel", nks[i].Fuel);
                    command.Parameters.AddWithValue("@ship_water", nks[i].Water);
                    command.Parameters.AddWithValue("@ship_personel", nks[i].Personel);
                    command.Parameters.AddWithValue("@ship_captain", nks[i].Captain.Fullname);
                    command.Parameters.AddWithValue("@ship_speed", nks[i].Speed);
                    command.Parameters.AddWithValue("@ship_journeytime", nks[i].Time);
                    command.Parameters.AddWithValue("@ship_launch", nks[i].LaunchYear);
                    command.Parameters.AddWithValue("@img", nks[i].Image);
                    command.Parameters.AddWithValue("@ship_region", nks[i].Region);
                    command.Parameters.AddWithValue("@ship_dateregistration", nks[i].RegistrationDate);
                    command.Parameters.AddWithValue("@ship_placeregistration", nks[i].RegistrationPlace);
                    command.Parameters.AddWithValue("@ship_registration_number", nks[i].RegistrationNumber);
                    command.Parameters.AddWithValue("@ship_created", nks[i].Created);
                    command.Parameters.AddWithValue("@ship_updated", nks[i].Updated);
                    try
                    {
                        if (command.ExecuteNonQuery() > 0)
                        {
                            ships.Add(nks[i]);
                        }
                    }
                    catch(Exception e)
                    {
                        continue;
                    }
                }
            }
            return ships;
        }

        public List<CaptainInfo> GetAllCaptain()
        {
            List<CaptainInfo> cis = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("CaptainInfo");
                command.Connection = con;
                command.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    cis = new List<CaptainInfo>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        cis.Add(new CaptainInfo()
                        {
                            ID = ds.Tables[0].Rows[i]["capt_id"].ToString(),
                            Birthday = ds.Tables[0].Rows[i]["capt_birthday"].ToString(),
                            Fullname = ds.Tables[0].Rows[i]["fullname"].ToString(),
                            Function = ds.Tables[0].Rows[i]["capt_function"].ToString(),
                            Gender = ds.Tables[0].Rows[i]["capt_gender"].ToString() == "True" ? true : false,
                            Residence = ds.Tables[0].Rows[i]["capt_residence"].ToString()
                        });
                    }
                }
            }
            return cis;
        }

        public bool InsertNewCaptain(CaptainInfo capt)
        {
            bool isSuccess = false;
            int first = capt.Fullname.IndexOf(' ');
            int last = capt.Fullname.LastIndexOf(' ');
            string ho = capt.Fullname.Substring(0, first);
            string ten = capt.Fullname.Substring(last + 1);
            string tenlot = string.Empty;
            if(last - first > 0)
                tenlot = capt.Fullname.Substring(first + 1, last - first - 1);
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("InsertCaptain");
                command.Parameters.AddWithValue("@capt_id", capt.ID);
                command.Parameters.AddWithValue("@capt_function", capt.Function);
                command.Parameters.AddWithValue("@capt_gender", capt.Gender);
                command.Parameters.AddWithValue("@capt_residence", capt.Residence);
                command.Parameters.AddWithValue("@capt_birthday", capt.Birthday);
                command.Parameters.AddWithValue("@capt_surname", ho);
                command.Parameters.AddWithValue("@capt_middlename", tenlot);
                command.Parameters.AddWithValue("@capt_name", ten);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public List<Screw> GetScrewSystemByIMO(string iMO)
        {
            List<Screw> sc = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("select * from ScrewSystem where scr_imo = @scr_imo order by scr_name");
                command.Connection = con;
                command.Parameters.AddWithValue("@scr_imo", iMO);
                command.CommandType = CommandType.Text;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    sc = new List<Screw>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        sc.Add(new Screw()
                        {
                            ID = ds.Tables[0].Rows[i]["scr_id"].ToString(),
                            Name = ds.Tables[0].Rows[i]["scr_name"].ToString(),
                            BasicDiameter = ds.Tables[0].Rows[i]["scr_basic_diameter"].ToString(),
                            BehindDiameter = ds.Tables[0].Rows[i]["scr_behind_diameter"].ToString(),
                            Diameter = ds.Tables[0].Rows[i]["scr_diameter"].ToString(),
                            FrontDiameter = ds.Tables[0].Rows[i]["scr_front_diameter"].ToString(),
                            MiddleDiameter = ds.Tables[0].Rows[i]["scr_middle_diameter"].ToString(),
                            Width = ds.Tables[0].Rows[i]["scr_width"].ToString(),
                            Note = ds.Tables[0].Rows[i]["scr_note"].ToString(),
                            Wings = ds.Tables[0].Rows[i]["scr_wings"].ToString()
                        });
                    }
                }
            }
            return sc;
        }

        public bool UpdateScrewSystem(List<Screw> scrs)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = con.CreateCommand();
                SqlTransaction transaction;
                transaction = con.BeginTransaction("TransactionUpdate");
                command.Connection = con;
                command.Transaction = transaction;
                try
                {
                    foreach (var item in scrs)
                    {
                        command.Parameters.Clear();
                        command.CommandText = "UpdateScrewSystem";
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@scr_id", item.ID);
                        command.Parameters.AddWithValue("@scr_width", item.Width);
                        command.Parameters.AddWithValue("@scr_basic_diameter", item.BasicDiameter);
                        command.Parameters.AddWithValue("@scr_behind_diameter", item.BehindDiameter);
                        command.Parameters.AddWithValue("@scr_middle_diameter", item.MiddleDiameter);
                        command.Parameters.AddWithValue("@scr_front_diameter", item.FrontDiameter);
                        command.Parameters.AddWithValue("@scr_diameter", item.Diameter);
                        command.Parameters.AddWithValue("@scr_imo", item.IMO);
                        command.Parameters.AddWithValue("@scr_name", item.Name);
                        command.Parameters.AddWithValue("@scr_note", item.Note);
                        if (command.ExecuteNonQuery() <= 0)
                        {
                            transaction.Rollback("TransactionUpdate");
                            return false;
                        }                            
                    }
                    transaction.Commit();
                    isSuccess = true;
                }
                catch (Exception ex)
                {
                    transaction.Rollback("TransactionUpdate");
                }
            }
            return isSuccess;
        }

        public bool UpdateScrewSystem(Screw scrs)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = con.CreateCommand();
                SqlTransaction transaction;
                transaction = con.BeginTransaction("TransactionUpdate");
                command.Connection = con;
                command.Transaction = transaction;
                try
                {
                    command.Parameters.Clear();
                    command.CommandText = "UpdateScrewSystem";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@scr_id", scrs.ID);
                    command.Parameters.AddWithValue("@scr_width", scrs.Width);
                    command.Parameters.AddWithValue("@scr_basic_diameter", scrs.BasicDiameter);
                    command.Parameters.AddWithValue("@scr_behind_diameter", scrs.BehindDiameter);
                    command.Parameters.AddWithValue("@scr_middle_diameter", scrs.MiddleDiameter);
                    command.Parameters.AddWithValue("@scr_front_diameter", scrs.FrontDiameter);
                    command.Parameters.AddWithValue("@scr_diameter", scrs.Diameter);
                    command.Parameters.AddWithValue("@scr_name", scrs.Name);
                    command.Parameters.AddWithValue("@scr_note", scrs.Note);
                    command.Parameters.AddWithValue("@scr_wings", scrs.Wings);
                    if (command.ExecuteNonQuery() <= 0)
                    {
                        transaction.Rollback("TransactionUpdate");
                        return false;
                    }
                    transaction.Commit();
                    isSuccess = true;
                }
                catch (Exception ex)
                {
                    transaction.Rollback("TransactionUpdate");
                }
            }
            return isSuccess;
        }
        public List<Screw> InsertListScrew(List<Screw> nks)
        {
            List<Screw> success = null;
            if (IsConnect())
            {
                success = new List<Screw>();
                SqlCommand command = new SqlCommand("InsertNewScrewSystem");
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                for (int i = 0; i < nks.Count; i++)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@scr_id", nks[i].ID);
                    command.Parameters.AddWithValue("@scr_width", nks[i].Width);
                    command.Parameters.AddWithValue("@scr_basic_diameter", nks[i].BasicDiameter);
                    command.Parameters.AddWithValue("@scr_behind_diameter", nks[i].BehindDiameter);
                    command.Parameters.AddWithValue("@scr_middle_diameter", nks[i].MiddleDiameter);
                    command.Parameters.AddWithValue("@scr_front_diameter", nks[i].FrontDiameter);
                    command.Parameters.AddWithValue("@scr_diameter", nks[i].Diameter);
                    command.Parameters.AddWithValue("@scr_imo", nks[i].Ship.ID);
                    command.Parameters.AddWithValue("@scr_name", nks[i].Name);
                    command.Parameters.AddWithValue("@scr_note", nks[i].Note);
                    command.Parameters.AddWithValue("@scr_wings", nks[i].Wings);
                    if (command.ExecuteNonQuery() > 0)
                        success.Add(nks[i]);
                }
            }
            return success;
        }

        public bool InsertNewScrewSystem(List<Screw> scrs)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = con.CreateCommand();
                SqlTransaction transaction;
                transaction = con.BeginTransaction("TransactionInsert");
                command.Connection = con;
                command.Transaction = transaction;
                try
                {
                    foreach (var item in scrs)
                    {
                        command.Parameters.Clear();
                        command.CommandText = "InsertNewScrewSystem";
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@scr_id", item.ID);
                        command.Parameters.AddWithValue("@scr_width", item.Width);
                        command.Parameters.AddWithValue("@scr_basic_diameter", item.BasicDiameter);
                        command.Parameters.AddWithValue("@scr_behind_diameter", item.BehindDiameter);
                        command.Parameters.AddWithValue("@scr_middle_diameter", item.MiddleDiameter);
                        command.Parameters.AddWithValue("@scr_front_diameter", item.FrontDiameter);
                        command.Parameters.AddWithValue("@scr_diameter", item.Diameter);
                        command.Parameters.AddWithValue("@scr_imo", item.IMO);
                        command.Parameters.AddWithValue("@scr_name", item.Name);
                        command.Parameters.AddWithValue("@scr_note", item.Note);
                        if (command.ExecuteNonQuery() <= 0)
                        {
                            transaction.Rollback("TransactionInsert");
                            return false;
                        }
                    }
                    transaction.Commit();
                    isSuccess = true;
                }
                catch(Exception ex)
                {
                    transaction.Rollback("TransactionInsert");
                }
            }
            return isSuccess;
        }

        public bool InsertNewScrewSystem(Screw scrs)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = con.CreateCommand();
                SqlTransaction transaction;
                transaction = con.BeginTransaction("TransactionInsert");
                command.Connection = con;
                command.Transaction = transaction;
                try
                {
                    command.Parameters.Clear();
                    command.CommandText = "InsertNewScrewSystem";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@scr_id", scrs.ID);
                    command.Parameters.AddWithValue("@scr_width", scrs.Width);
                    command.Parameters.AddWithValue("@scr_basic_diameter", scrs.BasicDiameter);
                    command.Parameters.AddWithValue("@scr_behind_diameter", scrs.BehindDiameter);
                    command.Parameters.AddWithValue("@scr_middle_diameter", scrs.MiddleDiameter);
                    command.Parameters.AddWithValue("@scr_front_diameter", scrs.FrontDiameter);
                    command.Parameters.AddWithValue("@scr_diameter", scrs.Diameter);
                    command.Parameters.AddWithValue("@scr_imo", scrs.Ship.ID);
                    command.Parameters.AddWithValue("@scr_name", scrs.Name);
                    command.Parameters.AddWithValue("@scr_note", scrs.Note);
                    command.Parameters.AddWithValue("@scr_wings", scrs.Wings);
                    if (command.ExecuteNonQuery() <= 0)
                    {
                        transaction.Rollback("TransactionInsert");
                        return false;
                    }
                    transaction.Commit();
                    isSuccess = true;
                }
                catch (Exception ex)
                {
                    transaction.Rollback("TransactionInsert");
                }
            }
            return isSuccess;
        }

        public List<MotoBoat> GetMotoBoatByIMO(string IMO)
        {
            List<MotoBoat> mes = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("select * from MotoBoat where mb_imo = @mb_imo");
                command.Connection = con;
                command.Parameters.AddWithValue("@mb_imo", IMO);
                command.CommandType = CommandType.Text;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    mes = new List<MotoBoat>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        mes.Add(new MotoBoat()
                        {
                            ID = ds.Tables[0].Rows[i]["mb_id"].ToString(),
                            Deep = ds.Tables[0].Rows[i]["mb_deep"].ToString(),
                            EngineNumber = ds.Tables[0].Rows[i]["mb_engine_number"].ToString(),
                            EngineType  = ds.Tables[0].Rows[i]["mb_engine_type"].ToString(),
                            Height = ds.Tables[0].Rows[i]["mb_height"].ToString(),
                            Name = ds.Tables[0].Rows[i]["mb_name"].ToString(),
                            Note = ds.Tables[0].Rows[i]["mb_note"].ToString(),
                            Personel = ds.Tables[0].Rows[i]["mb_personel"].ToString(),
                            ScrewNumber = ds.Tables[0].Rows[i]["mb_screw_number"].ToString(),
                            ScrewType = ds.Tables[0].Rows[i]["mb_screw_type"].ToString(),
                            Speed = ds.Tables[0].Rows[i]["mb_speed"].ToString(),
                            Weight = ds.Tables[0].Rows[i]["mb_weight"].ToString(),
                            Width = ds.Tables[0].Rows[i]["mb_width"].ToString(),
                            Ship = new ShipInfo() { ID = IMO }
                        });
                    }
                }
            }
            return mes;
        }

        public bool InsertNewMotoBoat(MotoBoat moto)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("InsertNewMotoBoat");
                command.Parameters.AddWithValue("@mb_id", moto.ID);
                command.Parameters.AddWithValue("@mb_imo", moto.Ship.ID);
                command.Parameters.AddWithValue("@mb_name", moto.Name);
                command.Parameters.AddWithValue("@mb_personel", moto.Personel);
                command.Parameters.AddWithValue("@mb_engine_type", moto.EngineType);
                command.Parameters.AddWithValue("@mb_engine_number", moto.EngineNumber);
                command.Parameters.AddWithValue("@mb_screw_type", moto.ScrewType);
                command.Parameters.AddWithValue("@mb_screw_number", moto.ScrewNumber);
                command.Parameters.AddWithValue("@mb_note", moto.Note);
                command.Parameters.AddWithValue("@mb_width", moto.Width);
                command.Parameters.AddWithValue("@mb_height", moto.Height);
                command.Parameters.AddWithValue("@mb_deep", moto.Deep);
                command.Parameters.AddWithValue("@mb_speed", moto.Speed);
                command.Parameters.AddWithValue("@mb_weight", moto.Weight);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool UpdateMotoBoat(MotoBoat moto)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateNewMotoBoat");
                command.Parameters.AddWithValue("@mb_id", moto.ID);
                command.Parameters.AddWithValue("@mb_name", moto.Name);
                command.Parameters.AddWithValue("@mb_personel", moto.Personel);
                command.Parameters.AddWithValue("@mb_engine_type", moto.EngineType);
                command.Parameters.AddWithValue("@mb_engine_number", moto.EngineNumber);
                command.Parameters.AddWithValue("@mb_screw_type", moto.ScrewType);
                command.Parameters.AddWithValue("@mb_screw_number", moto.ScrewNumber);
                command.Parameters.AddWithValue("@mb_note", moto.Note);
                command.Parameters.AddWithValue("@mb_width", moto.Width);
                command.Parameters.AddWithValue("@mb_height", moto.Height);
                command.Parameters.AddWithValue("@mb_deep", moto.Deep);
                command.Parameters.AddWithValue("@mb_speed", moto.Speed);
                command.Parameters.AddWithValue("@mb_weight", moto.Weight);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool DeleteMotoBoat(string v)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("delete from MotoBoat where mb_id = @mb_id");
                command.Parameters.AddWithValue("@mb_id", v);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public List<MotoBoat> InsertListMotoBoat(List<MotoBoat> nks)
        {
            List<MotoBoat> success = null;
            if (IsConnect())
            {
                success = new List<MotoBoat>();
                SqlCommand command = new SqlCommand("InsertNewMotoBoat");
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                for (int i = 0; i < nks.Count; i++)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@mb_id", nks[i].ID);
                    command.Parameters.AddWithValue("@mb_imo", nks[i].Ship.ID);
                    command.Parameters.AddWithValue("@mb_name", nks[i].Name);
                    command.Parameters.AddWithValue("@mb_personel", nks[i].Personel);
                    command.Parameters.AddWithValue("@mb_engine_type", nks[i].EngineType);
                    command.Parameters.AddWithValue("@mb_engine_number", nks[i].EngineNumber);
                    command.Parameters.AddWithValue("@mb_screw_type", nks[i].ScrewType);
                    command.Parameters.AddWithValue("@mb_screw_number", nks[i].ScrewNumber);
                    command.Parameters.AddWithValue("@mb_note", nks[i].Note);
                    command.Parameters.AddWithValue("@mb_width", nks[i].Width);
                    command.Parameters.AddWithValue("@mb_height", nks[i].Height);
                    command.Parameters.AddWithValue("@mb_deep", nks[i].Deep);
                    command.Parameters.AddWithValue("@mb_speed", nks[i].Speed);
                    command.Parameters.AddWithValue("@mb_weight", nks[i].Weight);
                    if (command.ExecuteNonQuery() > 0)
                        success.Add(nks[i]);
                }
            }
            return success;
        }
        public List<Anchor> InsertListAnchor(List<Anchor> nks)
        {
            List<Anchor> success = null;
            if (IsConnect())
            {
                success = new List<Anchor>();
                SqlCommand command = new SqlCommand("InsertAnchor");
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                for (int i = 0; i < nks.Count; i++)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@anchor_id", nks[i].ID);
                    command.Parameters.AddWithValue("@anchor_type", nks[i].Type);
                    command.Parameters.AddWithValue("@anchor_quantity", nks[i].Quantity);
                    command.Parameters.AddWithValue("@anchor_width", nks[i].Width);
                    command.Parameters.AddWithValue("@anchor_diameter", nks[i].Diameter);
                    command.Parameters.AddWithValue("@anchor_load", nks[i].Load);
                    command.Parameters.AddWithValue("@anchor_note", nks[i].Note);
                    command.Parameters.AddWithValue("@anchor_imo", nks[i].Ship.ID);
                    if (command.ExecuteNonQuery() > 0)
                        success.Add(nks[i]);
                }
            }
            return success;
        }

        public bool DeleteAnchor(string v)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("delete from Anchor where anchor_id = @anchor_id");
                command.Parameters.AddWithValue("@anchor_id", v);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool InsertNewAnchor(Anchor anchor)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("InsertAnchor");
                command.Parameters.AddWithValue("@anchor_id", anchor.ID);
                command.Parameters.AddWithValue("@anchor_type", anchor.Type);
                command.Parameters.AddWithValue("@anchor_quantity", anchor.Quantity);
                command.Parameters.AddWithValue("@anchor_width", anchor.Width);
                command.Parameters.AddWithValue("@anchor_diameter", anchor.Diameter);
                command.Parameters.AddWithValue("@anchor_load", anchor.Load);
                command.Parameters.AddWithValue("@anchor_note", anchor.Note);
                command.Parameters.AddWithValue("@anchor_imo", anchor.Ship.ID);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool UpdateAnchor(Anchor anchor)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateAnchor");
                command.Parameters.AddWithValue("@anchor_id", anchor.ID);
                command.Parameters.AddWithValue("@anchor_type", anchor.Type);
                command.Parameters.AddWithValue("@anchor_quantity", anchor.Quantity);
                command.Parameters.AddWithValue("@anchor_width", anchor.Width);
                command.Parameters.AddWithValue("@anchor_diameter", anchor.Diameter);
                command.Parameters.AddWithValue("@anchor_load", anchor.Load);
                command.Parameters.AddWithValue("@anchor_note", anchor.Note);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public List<Anchor> GetAnchorByIMO(string iMO)
        {
            List<Anchor> mes = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("select * from Anchor where anchor_imo = @anchor_imo");
                command.Connection = con;
                command.Parameters.AddWithValue("@anchor_imo", iMO);
                command.CommandType = CommandType.Text;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    mes = new List<Anchor>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        mes.Add(new Anchor()
                        {
                            ID = ds.Tables[0].Rows[i]["anchor_id"].ToString(),
                            Diameter = ds.Tables[0].Rows[i]["anchor_diametter"].ToString(),
                            Load = ds.Tables[0].Rows[i]["anchor_load"].ToString(),
                            Quantity = ds.Tables[0].Rows[i]["anchor_quantity"].ToString(),
                            Type = ds.Tables[0].Rows[i]["anchor_type"].ToString(),
                            Note = ds.Tables[0].Rows[i]["anchor_note"].ToString(),
                            Width  = ds.Tables[0].Rows[i]["anchor_width"].ToString(),
                            Ship = new ShipInfo() { ID = iMO }
                        });
                    }
                }
            }
            return mes;
        }

        public List<LifeSaving> GetLifeSavingByIMO(string iD)
        {
            List<LifeSaving> mes = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("select * from LifeFacility where lif_shipid = @lif_shipid");
                command.Connection = con;
                command.Parameters.AddWithValue("@lif_shipid", iD);
                command.CommandType = CommandType.Text;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    mes = new List<LifeSaving>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        mes.Add(new LifeSaving()
                        {
                            ID = ds.Tables[0].Rows[i]["lif_id"].ToString(),
                            Origin = ds.Tables[0].Rows[i]["lif_from"].ToString(),
                            State = ds.Tables[0].Rows[i]["lif_state"].ToString(),
                            Quantity = ds.Tables[0].Rows[i]["lif_quantity"].ToString(),
                            Type = ds.Tables[0].Rows[i]["lif_type"].ToString(),
                            Note = ds.Tables[0].Rows[i]["lif_note"].ToString(),
                            Unit = ds.Tables[0].Rows[i]["lif_unit"].ToString(),
                            Ship = new ShipInfo() { ID = iD }
                        });
                    }
                }
            }
            return mes;
        }
        public List<LifeSaving> InsertListLifeSaving(List<LifeSaving> nks)
        {
            List<LifeSaving> success = null;
            if (IsConnect())
            {
                success = new List<LifeSaving>();
                SqlCommand command = new SqlCommand("InsertNewLifeFacility");
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                for (int i = 0; i < nks.Count; i++)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@lif_id", nks[i].ID);
                    command.Parameters.AddWithValue("@lif_type", nks[i].Type);
                    command.Parameters.AddWithValue("@lif_from", nks[i].Origin);
                    command.Parameters.AddWithValue("@lif_state", nks[i].State);
                    command.Parameters.AddWithValue("@lif_quantity", nks[i].Quantity);
                    command.Parameters.AddWithValue("@lif_unit", nks[i].Unit);
                    command.Parameters.AddWithValue("@lif_note", nks[i].Note);
                    command.Parameters.AddWithValue("@lif_shipid", nks[i].Ship.ID);
                    if (command.ExecuteNonQuery() > 0)
                        success.Add(nks[i]);
                }
            }
            return success;
        }
        public bool InsertNewLifeSaving(LifeSaving life)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("InsertNewLifeFacility");
                command.Parameters.AddWithValue("@lif_id", life.ID);
                command.Parameters.AddWithValue("@lif_type", life.Type);
                command.Parameters.AddWithValue("@lif_from", life.Origin);
                command.Parameters.AddWithValue("@lif_state", life.State);
                command.Parameters.AddWithValue("@lif_quantity", life.Quantity);
                command.Parameters.AddWithValue("@lif_unit", life.Unit);
                command.Parameters.AddWithValue("@lif_note", life.Note);
                command.Parameters.AddWithValue("@lif_shipid", life.Ship.ID);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool UpdateLifeSaving(LifeSaving life)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateLifeFacility");
                command.Parameters.AddWithValue("@lif_id", life.ID);
                command.Parameters.AddWithValue("@lif_type", life.Type);
                command.Parameters.AddWithValue("@lif_from", life.Origin);
                command.Parameters.AddWithValue("@lif_state", life.State);
                command.Parameters.AddWithValue("@lif_quantity", life.Quantity);
                command.Parameters.AddWithValue("@lif_unit", life.Unit);
                command.Parameters.AddWithValue("@lif_note", life.Note);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public List<OtherEquipment> GetOtherEquipmentByIMO(string iD)
        {
            List<OtherEquipment> mes = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("select * from OtherFacility where of_shipid = @of_shipid");
                command.Connection = con;
                command.Parameters.AddWithValue("@of_shipid", iD);
                command.CommandType = CommandType.Text;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    mes = new List<OtherEquipment>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        mes.Add(new OtherEquipment()
                        {
                            ID = ds.Tables[0].Rows[i]["of_id"].ToString(),
                            Origin = ds.Tables[0].Rows[i]["of_from"].ToString(),
                            State = ds.Tables[0].Rows[i]["of_state"].ToString(),
                            Quantity = ds.Tables[0].Rows[i]["of_quantity"].ToString(),
                            Type = ds.Tables[0].Rows[i]["of_type"].ToString(),
                            Note = ds.Tables[0].Rows[i]["of_note"].ToString(),
                            Unit = ds.Tables[0].Rows[i]["of_unit"].ToString(),
                            Ship = new ShipInfo() { ID = iD }
                        });
                    }
                }
            }
            return mes;
        }

        public bool InsertNewOtherEquipment(OtherEquipment other)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("InsertNewOtherFacility");
                command.Parameters.AddWithValue("@of_id", other.ID);
                command.Parameters.AddWithValue("@of_type", other.Type);
                command.Parameters.AddWithValue("@of_from", other.Origin);
                command.Parameters.AddWithValue("@of_state", other.State);
                command.Parameters.AddWithValue("@of_quantity", other.Quantity);
                command.Parameters.AddWithValue("@of_unit", other.Unit);
                command.Parameters.AddWithValue("@of_note", other.Note);
                command.Parameters.AddWithValue("@of_shipid", other.Ship.ID);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public List<OtherEquipment> InsertListOtherEquipment(List<OtherEquipment> nks)
        {
            List<OtherEquipment> success = null;
            if (IsConnect())
            {
                success = new List<OtherEquipment>();
                SqlCommand command = new SqlCommand("InsertNewOtherFacility");
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                for (int i = 0; i < nks.Count; i++)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@of_id", nks[i].ID);
                    command.Parameters.AddWithValue("@of_type", nks[i].Type);
                    command.Parameters.AddWithValue("@of_from", nks[i].Origin);
                    command.Parameters.AddWithValue("@of_state", nks[i].State);
                    command.Parameters.AddWithValue("@of_quantity", nks[i].Quantity);
                    command.Parameters.AddWithValue("@of_unit", nks[i].Unit);
                    command.Parameters.AddWithValue("@of_note", nks[i].Note);
                    command.Parameters.AddWithValue("@of_shipid", nks[i].Ship.ID);
                    if (command.ExecuteNonQuery() > 0)
                        success.Add(nks[i]);
                }
            }
            return success;
        }

        public bool UpdateOtherEquipment(OtherEquipment other)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateOtherFacility");
                command.Parameters.AddWithValue("@of_id", other.ID);
                command.Parameters.AddWithValue("@of_type", other.Type);
                command.Parameters.AddWithValue("@of_from", other.Origin);
                command.Parameters.AddWithValue("@of_state", other.State);
                command.Parameters.AddWithValue("@of_quantity", other.Quantity);
                command.Parameters.AddWithValue("@of_unit", other.Unit);
                command.Parameters.AddWithValue("@of_note", other.Note);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool DeleteLifeSaving(string v)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("delete from LifeFacility where lif_id=@lif_id");
                command.Parameters.AddWithValue("@lif_id", v);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool DeleteOtherEquipment(string v)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("delete from OtherFacility where of_id=@of_id");
                command.Parameters.AddWithValue("@of_id", v);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public List<Supply> GetSuppliesByIMO(string iD)
        {
            List<Supply> mes = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("select * from Materials where ma_shipid = @ma_shipid");
                command.Connection = con;
                command.Parameters.AddWithValue("@ma_shipid", iD);
                command.CommandType = CommandType.Text;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    mes = new List<Supply>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        mes.Add(new Supply()
                        {
                            ID = ds.Tables[0].Rows[i]["ma_id"].ToString(),
                            Origin = ds.Tables[0].Rows[i]["ma_from"].ToString(),
                            Code = ds.Tables[0].Rows[i]["ma_code"].ToString(),
                            Quantity = ds.Tables[0].Rows[i]["ma_quantity"].ToString(),
                            Type = ds.Tables[0].Rows[i]["ma_name"].ToString(),
                            Note = ds.Tables[0].Rows[i]["ma_note"].ToString(),
                            Unit = ds.Tables[0].Rows[i]["ma_unit"].ToString(),
                            Ship = new ShipInfo() { ID = iD }
                        });
                    }
                }
            }
            return mes;
        }

        public bool InsertNewSupply(Supply supp)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("InsertNewMaterials");
                command.Parameters.AddWithValue("@ma_id", supp.ID);
                command.Parameters.AddWithValue("@ma_name", supp.Type);
                command.Parameters.AddWithValue("@ma_from", supp.Origin);
                command.Parameters.AddWithValue("@ma_code", supp.Code);
                command.Parameters.AddWithValue("@ma_quantity", supp.Quantity);
                command.Parameters.AddWithValue("@ma_unit", supp.Unit);
                command.Parameters.AddWithValue("@ma_note", supp.Note);
                command.Parameters.AddWithValue("@ma_shipid", supp.Ship.ID);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool UpdateSupply(Supply supp)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateMaterials");
                command.Parameters.AddWithValue("@ma_id", supp.ID);
                command.Parameters.AddWithValue("@ma_name", supp.Type);
                command.Parameters.AddWithValue("@ma_from", supp.Origin);
                command.Parameters.AddWithValue("@ma_code", supp.Code);
                command.Parameters.AddWithValue("@ma_quantity", supp.Quantity);
                command.Parameters.AddWithValue("@ma_unit", supp.Unit);
                command.Parameters.AddWithValue("@ma_note", supp.Note);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool DeleteSupply(string v)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("delete from Materials where ma_id=@ma_id");
                command.Parameters.AddWithValue("@ma_id", v);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public List<Supply> InsertListSupplies(List<Supply> nks)
        {
            List<Supply> success = null;
            if (IsConnect())
            {
                success = new List<Supply>();
                SqlCommand command = new SqlCommand("InsertNewMaterials");
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                for (int i = 0; i < nks.Count; i++)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@ma_id", nks[i].ID);
                    command.Parameters.AddWithValue("@ma_name", nks[i].Type);
                    command.Parameters.AddWithValue("@ma_from", nks[i].Origin);
                    command.Parameters.AddWithValue("@ma_code", nks[i].Code);
                    command.Parameters.AddWithValue("@ma_quantity", nks[i].Quantity);
                    command.Parameters.AddWithValue("@ma_unit", nks[i].Unit);
                    command.Parameters.AddWithValue("@ma_note", nks[i].Note);
                    command.Parameters.AddWithValue("@ma_shipid", nks[i].Ship.ID);
                    if (command.ExecuteNonQuery() > 0)
                        success.Add(nks[i]);
                }
            }
            return success;
        }

        public List<ShipRow> GetReport()
        {
            List<ShipRow> mes = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("Report01");
                command.Connection = con;
                command.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    mes = new List<ShipRow>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        ShipRow ship = new ShipRow();
                        ship.NameRegion = ds.Tables[0].Rows[i]["region"].ToString();
                        ship.EngineInfo = new List<MainEngine>();
                        for (int j = 0; j < ds.Tables[1].Rows.Count; j++)
                        {
                            if(ship.NameRegion== ds.Tables[1].Rows[j]["region"].ToString())
                            {
                                ship.EngineInfo.Add(new MainEngine()
                                {
                                    Name = ds.Tables[1].Rows[j]["main_type"].ToString(),
                                    Origin = ds.Tables[1].Rows[j]["main_origin"].ToString(),
                                    Power = ds.Tables[1].Rows[j]["main_power"].ToString(),
                                    Note = ds.Tables[1].Rows[j]["main_note"].ToString(),
                                    Ship = new ShipInfo()
                                    {
                                        RegistrationNumber = ds.Tables[1].Rows[j]["ship_registration_number"].ToString(),
                                        Weight = ds.Tables[1].Rows[j]["ship_weight"].ToString(),
                                        Captain = new CaptainInfo()
                                        {
                                            Fullname = ds.Tables[1].Rows[j]["fullname"].ToString()
                                        },
                                        ID = ds.Tables[1].Rows[j]["ship_id"].ToString()
                                    }
                                });
                            }
                        }
                        mes.Add(ship);                        
                    }
                }
            }
            return mes;
        }


        public List<Winch> GetWinches(string iD)
        {
            List<Winch> mes = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("select * from Winch where w_shipid = @w_shipid order by w_type, w_load, w_quantity");
                command.Connection = con;
                command.Parameters.AddWithValue("@w_shipid", iD);
                command.CommandType = CommandType.Text;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    mes = new List<Winch>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        mes.Add(new Winch()
                        {
                            ID = ds.Tables[0].Rows[i]["w_id"].ToString(),
                            Quantity = ds.Tables[0].Rows[i]["w_quantity"].ToString(),
                            Type = ds.Tables[0].Rows[i]["w_type"].ToString(),
                            Note = ds.Tables[0].Rows[i]["w_note"].ToString(),
                            Weight = ds.Tables[0].Rows[i]["w_load"].ToString()
                        });
                    }
                }
            }
            return mes;
        }
        public List<Winch> InsertListWinch(List<Winch> nks)
        {
            List<Winch> success = null;
            if (IsConnect())
            {
                success = new List<Winch>();
                SqlCommand command = new SqlCommand("InsertNewWinch");
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                for (int i = 0; i < nks.Count; i++)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@w_id", nks[i].ID);
                    command.Parameters.AddWithValue("@w_type", nks[i].Type);
                    command.Parameters.AddWithValue("@w_load", nks[i].Weight);
                    command.Parameters.AddWithValue("@w_quantity", nks[i].Quantity);
                    command.Parameters.AddWithValue("@w_note", nks[i].Note);
                    command.Parameters.AddWithValue("@w_shipid", nks[i].Ship.ID);
                    if (command.ExecuteNonQuery() > 0)
                        success.Add(nks[i]);
                }
            }
            return success;
        }
        public bool InsertNewWinch(Winch w)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("InsertNewWinch");
                command.Parameters.AddWithValue("@w_id", w.ID);
                command.Parameters.AddWithValue("@w_type", w.Type);
                command.Parameters.AddWithValue("@w_load", w.Weight);
                command.Parameters.AddWithValue("@w_quantity", w.Quantity);
                command.Parameters.AddWithValue("@w_note", w.Note);
                command.Parameters.AddWithValue("@w_shipid", w.Ship.ID);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool UpdateWinch(Winch w)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateWinch");
                command.Parameters.AddWithValue("@w_id", w.ID);
                command.Parameters.AddWithValue("@w_type", w.Type);
                command.Parameters.AddWithValue("@w_load", w.Weight);
                command.Parameters.AddWithValue("@w_quantity", w.Quantity);
                command.Parameters.AddWithValue("@w_note", w.Note);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool DeleteWinch(string v)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("delete from Winch where w_id=@w_id");
                command.Parameters.AddWithValue("@w_id", v);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public List<Chain> GetChain(string iD)
        {
            List<Chain> mes = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("select * from Chain where chain_shipid = @chain_shipid order by chain_type, chain_width");
                command.Connection = con;
                command.Parameters.AddWithValue("@chain_shipid", iD);
                command.CommandType = CommandType.Text;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    mes = new List<Chain>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        mes.Add(new Chain()
                        {
                            ID = ds.Tables[0].Rows[i]["chain_id"].ToString(),
                            Diameter = ds.Tables[0].Rows[i]["chain_diameter"].ToString(),
                            Type = ds.Tables[0].Rows[i]["chain_type"].ToString(),
                            Note = ds.Tables[0].Rows[i]["chain_note"].ToString(),
                            Width = ds.Tables[0].Rows[i]["chain_width"].ToString()
                        });
                    }
                }
            }
            return mes;
        }

        public bool InsertNewChain(Chain chain)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("InsertNewChain");
                command.Parameters.AddWithValue("@chain_id", chain.ID);
                command.Parameters.AddWithValue("@chain_type", chain.Type);
                command.Parameters.AddWithValue("@chain_diameter", chain.Diameter);
                command.Parameters.AddWithValue("@chain_width", chain.Width);
                command.Parameters.AddWithValue("@chain_note", chain.Note);
                command.Parameters.AddWithValue("@chain_shipid", chain.Ship.ID);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public List<Chain> InsertListChain(List<Chain> nks) 
        {
            List<Chain> success = null;
            if (IsConnect())
            {
                success = new List<Chain>();
                SqlCommand command = new SqlCommand("InsertNewChain");
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                for (int i = 0; i<nks.Count; i++)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@chain_id", nks[i].ID);
                    command.Parameters.AddWithValue("@chain_type", nks[i].Type);
                    command.Parameters.AddWithValue("@chain_diameter", nks[i].Diameter);
                    command.Parameters.AddWithValue("@chain_width", nks[i].Width);
                    command.Parameters.AddWithValue("@chain_note", nks[i].Note);
                    command.Parameters.AddWithValue("@chain_shipid", nks[i].Ship.ID);
                    if (command.ExecuteNonQuery() > 0)
                        success.Add(nks[i]);
                }
}
            return success;
        }

        public bool UpdateChain(Chain chain)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateChain");
                command.Parameters.AddWithValue("@chain_id", chain.ID);
                command.Parameters.AddWithValue("@chain_type", chain.Type);
                command.Parameters.AddWithValue("@chain_diameter", chain.Diameter);
                command.Parameters.AddWithValue("@chain_width", chain.Width);
                command.Parameters.AddWithValue("@chain_note", chain.Note);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public bool DeleteChain(string v)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("delete from Chain where chain_id=@chain_id");
                command.Parameters.AddWithValue("@chain_id", v);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }
        public bool InsertNewAnchor1(Anchor anchor)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("InsertNewAnchor1");
                command.Parameters.AddWithValue("@anchor_id", anchor.ID);
                command.Parameters.AddWithValue("@anchor_type", anchor.Type);
                command.Parameters.AddWithValue("@anchor_load", anchor.Load);
                command.Parameters.AddWithValue("@anchor_quantity", anchor.Quantity);
                command.Parameters.AddWithValue("@anchor_note", anchor.Note);
                command.Parameters.AddWithValue("@anchor_shipid", anchor.Ship.ID);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }

        public List<Anchor> InsertListAnchor1(List<Anchor> nks)
        {
            List<Anchor> success = null;
            if (IsConnect())
            {
                success = new List<Anchor>();
                SqlCommand command = new SqlCommand("InsertNewAnchor1");
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                for (int i = 0; i < nks.Count; i++)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@anchor_id", nks[i].ID);
                    command.Parameters.AddWithValue("@anchor_type", nks[i].Type);
                    command.Parameters.AddWithValue("@anchor_load", nks[i].Load);
                    command.Parameters.AddWithValue("@anchor_quantity", nks[i].Quantity);
                    command.Parameters.AddWithValue("@anchor_note", nks[i].Note);
                    command.Parameters.AddWithValue("@anchor_shipid", nks[i].Ship.ID);
                    if (command.ExecuteNonQuery() > 0)
                        success.Add(nks[i]);
                }
            }
            return success;
        }
        public bool UpdateAnchor1(Anchor anchor)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("UpdateNewAnchor1");
                command.Parameters.AddWithValue("@anchor_id", anchor.ID);
                command.Parameters.AddWithValue("@anchor_type", anchor.Type);
                command.Parameters.AddWithValue("@anchor_load", anchor.Load);
                command.Parameters.AddWithValue("@anchor_quantity", anchor.Quantity);
                command.Parameters.AddWithValue("@anchor_note", anchor.Note);
                command.CommandType = CommandType.StoredProcedure;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }        
        public bool DeleteAnchor1(string v)
        {
            bool isSuccess = false;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("delete from Anchor1 where anchor_id=@anchor_id");
                command.Parameters.AddWithValue("@anchor_id", v);
                command.CommandType = CommandType.Text;
                command.Connection = con;
                isSuccess = command.ExecuteNonQuery() > 0 ? true : false;
            }
            return isSuccess;
        }
        public List<Anchor> GetAnchor(string iD)
        {
            List<Anchor> mes = null;
            if (IsConnect())
            {
                SqlCommand command = new SqlCommand("select * from Anchor1 where anchor_shipid = @anchor_shipid order by anchor_type, anchor_load");
                command.Connection = con;
                command.Parameters.AddWithValue("@anchor_shipid", iD);
                command.CommandType = CommandType.Text;
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    mes = new List<Anchor>();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        mes.Add(new Anchor()
                        {
                            ID = ds.Tables[0].Rows[i]["anchor_id"].ToString(),
                            Load = ds.Tables[0].Rows[i]["anchor_load"].ToString(),
                            Type = ds.Tables[0].Rows[i]["anchor_type"].ToString(),
                            Note = ds.Tables[0].Rows[i]["anchor_note"].ToString(),
                            Quantity = ds.Tables[0].Rows[i]["anchor_quantity"].ToString()
                        });
                    }
                }
            }
            return mes;
        }
    }
}
