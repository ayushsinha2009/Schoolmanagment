using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AAcountant_AMasterPage : System.Web.UI.MasterPage
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["SN"] != null && Session["UId"] != null)
            {
                lblname.Text = "Welcome Accountant (" + Session["SN"].ToString() + ")";
                id = Convert.ToInt32(Session["UId"]);
                Session["id"] = id.ToString();
                Session["UUId"] = id.ToString();
            }
        }
    }
}
