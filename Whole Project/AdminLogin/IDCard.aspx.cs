using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AdminLogin_IDCard : System.Web.UI.Page
{
    #region Class Declration
    DataObjects obj = new DataObjects();
    DataTable dt;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            if (Request.QueryString["Id"] != null)
            {
                dt = obj.GenerateIDCard(Convert.ToInt32(Request.QueryString["Id"]));
                if (dt.Rows.Count > 0)
                {
                    lblname.Text = dt.Rows[0]["Name"].ToString();
                    lbldob.Text = dt.Rows[0]["DOB"].ToString();
                    Photo.ImageUrl = dt.Rows[0]["StudentPhoto"].ToString();
                    lblbg.Text = dt.Rows[0]["BloodGroup"].ToString();
                    lblclass.Text = dt.Rows[0]["ClassName"].ToString();
                    lblsection.Text= dt.Rows[0]["SectionName"].ToString();
                    lblAdd.Text= dt.Rows[0]["StudentCorrespondanceAddress"].ToString();
                    lblmob.Text = dt.Rows[0]["StudentFatherContactNo"].ToString()+","+ dt.Rows[0]["StudentMotherContactNo"].ToString();
                    lblvalid.Text = DateTime.Now.ToString("dd-MM-yyyy");
                }
             }
        }
    }
}