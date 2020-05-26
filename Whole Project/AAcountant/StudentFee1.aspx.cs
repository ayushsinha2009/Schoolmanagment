using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AAcountant_StudentFee1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["tf"] != null && Request.QueryString["lf"] != null && Request.QueryString["trnsprtFee"] != null && Request.QueryString["Others"] != null && Request.QueryString["Total"] != null && Request.QueryString["desc"] != null && Request.QueryString["Cat"] != null)
            {
                lbltf.Text = Request.QueryString["tf"].ToString();
                lbllf.Text = Request.QueryString["lf"].ToString();
                lbltrnsptfee.Text = Request.QueryString["trnsprtFee"].ToString();
                lblothers.Text= Request.QueryString["Others"].ToString();
                lbltotalfee.Text = Request.QueryString["Total"].ToString();
                lbldesc.Text= Request.QueryString["desc"].ToString();
                lblcat.Text = Request.QueryString["Cat"].ToString();
            }
        }
    }
}