using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin_MasterPage : System.Web.UI.MasterPage
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["SN"] != null && Session["UId"] != null)
            {
                lblname.Text = Session["SN"].ToString();
                id = Convert.ToInt32(Session["UserId"]);
                Session["id"] = id.ToString();
            }
        }
    }
}
