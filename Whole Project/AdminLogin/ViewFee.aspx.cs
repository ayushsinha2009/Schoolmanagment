using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AdminLogin_ViewFee : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt,dtfee;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Binddata();
        }
    }
    public void Binddata()
    {
        dt = obj.GetFee();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {
        dtfee = obj.GetFeeStudentName(txtname.Text);
        gvdetails.DataSource = dtfee;
        gvdetails.DataBind();
        txtname.Text = "";
    }
}