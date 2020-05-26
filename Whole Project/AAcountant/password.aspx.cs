using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class AAcountant_password : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    int i;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
        }
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {


        i = obj.UpdateStaffPassword(Convert.ToInt32(Session["UUId"]), txtcnfrmpwd.Text);
        if (1 > 0)
        {
            Session.Abandon();
            Response.Redirect("~/AdminLogin/AdminLogin.aspx");
        }
    }
}