using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebaspIntraMail07092022
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        GlobalClass globalClass = new GlobalClass();
        protected void btnlogi_Clivk(object sender, EventArgs e)
        {
            
           try
           {
                bool ans = globalClass.CheckLogin(txtuname.Text, txtpass.Text);
                if(ans)
                {
                    Session["uname"] = txtuname.Text;
                    Session.Timeout = 10;
                    Response.Redirect("Mainpage.aspx");
                }
                else
                {
                    lbldisp.Text = " Login Failed";
                    txtuname.Text = "";
                    txtpass.Text = "";
                    txtuname.Focus();
                }

            }
            catch (Exception ex)
            {

                lbldisp.Text = ex.Message;
            }
        }
    }
}