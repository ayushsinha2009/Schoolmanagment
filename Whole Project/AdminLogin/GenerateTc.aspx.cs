using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_GenerateTc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["Student"] != null && Request.QueryString["Class"] != null && Request.QueryString["section"] != null && Request.QueryString["FN"] != null)
            {
                lblstudent.Text = Request.QueryString["Student"].ToString();
                lblclass.Text = Request.QueryString["Class"].ToString();
                lblsection.Text = Request.QueryString["section"].ToString();
                lblfathername.Text = Request.QueryString["FN"].ToString();
            }
            txtamnt.Enabled = false;
            lblfy.Text = GetCurrentFinancialYear();
           
        }


    }
    public static string GetCurrentFinancialYear()
    {
        int CurrentYear = DateTime.Today.Year;
        int PreviousYear = DateTime.Today.Year - 1;
        int NextYear = DateTime.Today.Year + 1;
        string PreYear = PreviousYear.ToString();
        string NexYear = NextYear.ToString();
        string CurYear = CurrentYear.ToString();
        string FinYear = null;

        if (DateTime.Today.Month > 3)
            FinYear = CurYear + "-" + NexYear;
        else
            FinYear = PreYear + "-" + CurYear;
        return FinYear.Trim();
    }
}