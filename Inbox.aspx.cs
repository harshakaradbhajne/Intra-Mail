using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebaspIntraMail07092022
{
    public partial class Inbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect(" Login.aspx");
            }
            LoadGrid();

        }
        GlobalClass globalClass = new GlobalClass();
        private void LoadGrid()
        {
            DataSet ds = globalClass.GetInboxData(Session["uname"].ToString());
            gvInbox.DataSource = ds.Tables["dt"];
            gvInbox.DataBind();
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mainpage.aspx");
        }
    }
}