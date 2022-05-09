using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSB.Page_Master
{
    public partial class Update_Ship : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_update1_Click(object sender, EventArgs e)
        {
            if (FileImgsave_update.PostedFile != null)
            {
                int index = FileImgsave_update.PostedFile.FileName.IndexOf('.');
                string imgfile = Path.GetFileName(update_TenTau.Text + "." + "jpg");
                FileImgsave_update.SaveAs(Server.MapPath("~/Image/Ships/") + imgfile);
            }
        }
    }
}