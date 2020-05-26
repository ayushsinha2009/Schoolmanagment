using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AdminLogin_Dashboard : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dtcount, dtcount1, dtcount2, dtcount3, dtcount4;
    string i;
    #endregion
    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            dtcount = obj.SelectTotalStaffTypeMaster();
            dtcount1 = obj.SelectTotalStaff();
            dtcount2 = obj.SelectTotalTeacher();
            dtcount3 = obj.SelectTotalStudent();
            dtcount4 = obj.SelectTotalExpense();
            if (dtcount.Rows.Count > 0)
            {
                lblstafftype.Text = dtcount.Rows[0]["TotalST"].ToString();
            }
            if (dtcount1.Rows.Count > 0)
            {
                lblstaff.Text = dtcount1.Rows[0]["Total"].ToString();
            }
            if (dtcount2.Rows.Count > 0)
            {
                lblteacher.Text = dtcount2.Rows[0]["TotalTeacher"].ToString();
            }
            if (dtcount3.Rows.Count > 0)
            {
                lblstudent.Text = dtcount3.Rows[0]["TotalStudent"].ToString();
            }
            if (dtcount4.Rows.Count > 0)
            {
                i = dtcount4.Rows[0]["TotalExpense"].ToString();
                if (i == "")
                {
                    lblexpenses.Text = "0.00";
                }
                if (i != "")
                {
                    lblexpenses.Text = i.ToString();
                }
            }
        }
        lblfy.Text = GetCurrentFinancialYear();

    }
    #endregion
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