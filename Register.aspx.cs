using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebaspIntraMail07092022
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        GlobalClass globalClass = new GlobalClass();
        protected void btnreg_Click(object sender, EventArgs e)
        {
            try
            {
                string strsql;
                strsql = " INSERT INTO LoginTable VALUES('" + txtuname.Text + "','" + txtpass.Text + "')";
                globalClass.RunQuery(strsql);
                lbldisp.Text = " user Registerd";
            }
            catch ( Exception ex)
            {

                lbldisp.Text = ex.Message;
            }
        }

        protected void txtlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}