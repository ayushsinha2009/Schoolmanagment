using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AAcountant_AMasterPage : System.Web.UI.MasterPage
{
    DataObjects obj = new DataObjects();
    DataTable dt;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["SN"] != null && Session["UId"] != null)
            {
                lblname.Text = "Welcome Teacher (" + Session["SN"].ToString() + ")";
                id = Convert.ToInt32(Session["UId"]);
                Session["id"] = id.ToString();
                Session["tuid"] = id.ToString();
            }
            //this.Page.ClientScript.RegisterStartupScript(this.GetType(), "confirm", "alert('You clicked Yes!')" + Session["tuid"], true);
            dt = obj.CheckClassTeacher(Convert.ToInt32(Session["tuid"]));
            if (dt.Rows.Count > 0)
            {
                A1.Visible = true;
                //A2.Visible = true;
                A3.Visible = true;
            }
            if (dt.Rows.Count <= 0)
            {
                A1.Visible = false;
                //A2.Visible = false;
                A3.Visible = false;
            }
        }
    }
}
