using System;
using System.Collections.Generic;
using System.Linq;
using RestSharp;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using Newtonsoft.Json;
using System.Data;
using static CSB.reports.MayChinh;
using CSB.reports;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Windows.Forms;

namespace CSB.Page_Master
{
    
    public partial class Ship_equiment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
                    for (int i = 0; i< d; i++)
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
                    
                }
                else throw new Exception("can not select the data");
            }
            catch (Exception ex)
            {
                throw new Exception("can not select the data");
            }
        }

        private DataTable getdtMayChinh(string id)
        {
            DataTable dt = new DataTable("MayChinh");
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
                        dt.Rows.Add(x[i]["Name"].ToString(), x[i]["ProductionYear"].ToString(), x[i]["Power"].ToString(), x[i]["Origin"].ToString(), x[i]["Waste"].ToString(), x[i]["Speed"].ToString(), x[i]["Pittong"].ToString(), x[i]["Diameter"].ToString(), "Hải đội 111", "Thông tin máy chính tàu 4002");
                    }
                }
                else throw new Exception("can not select the data");
            }
            catch (Exception ex)
            {
                throw new Exception("can not select the data");
            }
            return dt;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = getdtMayChinh("");
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

            //r.ExportToDisk(CrystalDecisions.Shared.ExportFormatType.XLSXPagebased, "D:\\B.xls");

            //ExportOptions exportOption;
            //DiskFileDestinationOptions diskFileDestinationOption = new DiskFileDestinationOptions();
            //SaveFileDialog sfd = new SaveFileDialog();
            //sfd.Filter = "Word Files|*.doc";

            //if(sfd.ShowDialog() == DialogResult.OK)
            //{
            //    diskFileDestinationOption.DiskFileName = sfd.FileName;
            //}
            
            //exportOption = r.ExportOptions;
            //{
            //    exportOption.ExportDestinationType = ExportDestinationType.DiskFile;
            //    exportOption.ExportFormatType = ExportFormatType.WordForWindows;
            //    exportOption.ExportDestinationOptions = diskFileDestinationOption;
            //    exportOption.ExportFormatOptions = new PdfRtfWordFormatOptions();
            //}
            //r.Export();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataTable dt = getdtMayChinh("");
            rpMayChinh rpt = new rpMayChinh();
            rpt.SetDataSource(dt);
            CrystalReportViewer1.ReportSource = rpt;

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("../reports/rpMayChinh.rpt"));
            r.SetDataSource(dt);
            CrystalReportViewer1.ReportSource = null;
            CrystalReportViewer1.ReportSource = r;
            CrystalReportViewer1.RefreshReport();

            ExportOptions exportOption;
            DiskFileDestinationOptions diskFileDestinationOption = new DiskFileDestinationOptions();
            SaveFileDialog sfd = new SaveFileDialog();
            sfd.Filter = "Pdf Files|*.pdf";

            if (sfd.ShowDialog() == DialogResult.OK)
            {
                diskFileDestinationOption.DiskFileName = sfd.FileName;
            }

            exportOption = r.ExportOptions;
            {
                exportOption.ExportDestinationType = ExportDestinationType.DiskFile;
                exportOption.ExportFormatType = ExportFormatType.PortableDocFormat;
                exportOption.ExportDestinationOptions = diskFileDestinationOption;
                exportOption.ExportFormatOptions = new PdfRtfWordFormatOptions();
            }
            r.Export();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DataTable dt = getdtMayChinh("");
            rpMayChinh rpt = new rpMayChinh();
            rpt.SetDataSource(dt);
            CrystalReportViewer1.ReportSource = rpt;

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("../reports/rpMayChinh.rpt"));
            r.SetDataSource(dt);
            CrystalReportViewer1.ReportSource = null;
            CrystalReportViewer1.ReportSource = r;
            CrystalReportViewer1.RefreshReport();

            ExportOptions exportOption;
            DiskFileDestinationOptions diskFileDestinationOption = new DiskFileDestinationOptions();
            SaveFileDialog sfd = new SaveFileDialog();
            sfd.Filter = "Excel |*.xls";

            if (sfd.ShowDialog() == DialogResult.OK)
            {
                diskFileDestinationOption.DiskFileName = sfd.FileName;
            }

            exportOption = r.ExportOptions;
            {
                exportOption.ExportDestinationType = ExportDestinationType.DiskFile;
                exportOption.ExportFormatType = ExportFormatType.Excel;
                exportOption.ExportDestinationOptions = diskFileDestinationOption;
                exportOption.ExportFormatOptions = new ExcelFormatOptions();
            }
            r.Export();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DataTable dt = getdtMayChinh("");
            rpMayChinh rpt = new rpMayChinh();
            rpt.SetDataSource(dt);
            CrystalReportViewer1.ReportSource = rpt;

            ReportDocument r = new ReportDocument();
            r.Load(Server.MapPath("../reports/rpMayChinh.rpt"));
            r.SetDataSource(dt);
            CrystalReportViewer1.ReportSource = null;
            CrystalReportViewer1.ReportSource = r;
            CrystalReportViewer1.RefreshReport();
            

            r.PrintOptions.PaperOrientation = CrystalDecisions.Shared.PaperOrientation.Landscape;
            r.PrintOptions.PaperSize = PaperSize.PaperA4;
            r.PrintToPrinter(1, false, 0, 0);
        }
    }
}