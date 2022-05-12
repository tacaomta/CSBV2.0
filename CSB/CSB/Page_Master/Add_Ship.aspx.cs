using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSB.Page_Master
{
    public partial class Add_Ship : System.Web.UI.Page
    {

        protected void btn_save_Click(object sender, EventArgs e)
        {
            if (FileImgsave.PostedFile != null)
            {
                int index = FileImgsave.PostedFile.FileName.IndexOf('.');
                string imgfile = Path.GetFileName(addTenTau.Text + "." + "jpg");
                FileImgsave.SaveAs(Server.MapPath("~/Image/Ships/") + imgfile);
            }
        }
    }
}