using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using CSB.reports;
using Newtonsoft.Json;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSB.Page_Master
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int y = 2;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int d = 0;
            try
            {
                string URL = "api/main_engines?imo=0C7DEC67B2AE5AF01133B3C8E7E7A37B";
                var request = new RestRequest(URL, Method.Get);
                request.RequestFormat = DataFormat.Json;
                //request.AddHeader("content-type", "application/json");
                var client = new RestClient("http://localhost:8082/");
                RestResponse response = client.Execute(request);
                if (response.StatusCode == HttpStatusCode.OK)
                {
                    DataTable dt = new DataTable("MayChinh");
                    dt.Columns.Add("LOAIMAY");
                    dt.Columns.Add("NAMSX");
                    dt.Columns.Add("XUATXU");
                    dt.Columns.Add("CONGSUAT");
                    dt.Columns.Add("SUATTIEUHAO");
                    dt.Columns.Add("TOCDO");
                    dt.Columns.Add("SOXYLANH");
                    dt.Columns.Add("DKXYLANH");
                    dt.Columns.Add("DONVI");
                    dt.Columns.Add("TENTAU");
                    Newtonsoft.Json.Linq.JArray x = (Newtonsoft.Json.Linq.JArray)(JsonConvert.DeserializeObject(response.Content));
                    d = x.Count;
                    x.ToArray();
                    for (int i = 0; i < d; i++)
                    {
                        dt.Rows.Add(x[i]["Name"].ToString(), x[i]["ProductionYear"].ToString(), x[i]["Power"].ToString(), x[i]["Origin"].ToString(), x[i]["Waste"].ToString(), x[i]["Speed"].ToString(), x[i]["Pittong"].ToString(), x[i]["Diameter"].ToString(), "DONVI", "Thong tin may chinh tau hai quan");
                    }
                    rpMayChinh rpt = new rpMayChinh();
                    rpt.SetDataSource(dt);
                    CrystalReportViewer1.ReportSource = rpt;

                    ReportDocument r = new ReportDocument();
                    r.Load(Server.MapPath("../reports/rpMayChinh.rpt"));
                    r.SetDataSource(dt);
                    CrystalReportViewer1.ReportSource = null;
                    CrystalReportViewer1.ReportSource = r;
                    CrystalReportViewer1.RefreshReport();
                    r.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Baos caos");

                    r.ExportToDisk(CrystalDecisions.Shared.ExportFormatType.XLSXPagebased, "D:\\B.xls");

                    //r.PrintOptions.PaperOrientation = CrystalDecisions.Shared.PaperOrientation.Landscape;
                    //r.PrintOptions.PaperSize = PaperSize.PaperA4;
                    //r.PrintToPrinter(1, false, 0, 0);
                }
                else throw new Exception("can not select the data");
            }
            catch (Exception ex)
            {
                throw new Exception("can not select the data");
            }
        }
    }
}