using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class TTeacher_Dashboard : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dtcount4;
    string i;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!Page.IsPostBack)
        //{
        //    if (Session["SN"] != null && Session["UId"] != null)
        //    {
        //        Session["tuid"] = Session["UId"].ToString();
        //    }


        //    dtcount4 = obj.SelectTotalExpense();

        //    if (dtcount4.Rows.Count > 0)
        //    {
        //        i = dtcount4.Rows[0]["TotalExpense"].ToString();
        //        if (i == "")
        //        {
        //            lblexpenses.Text = "0.00";
        //        }
        //        if (i != "")
        //        {
        //            lblexpenses.Text = i.ToString();
        //        }
        //    }
        //}
        //lblfy.Text = GetCurrentFinancialYear();
    }
    //public static string GetCurrentFinancialYear()
    //{
    //    int CurrentYear = DateTime.Today.Year;
    //    int PreviousYear = DateTime.Today.Year - 1;
    //    int NextYear = DateTime.Today.Year + 1;
    //    string PreYear = PreviousYear.ToString();
    //    string NexYear = NextYear.ToString();
    //    string CurYear = CurrentYear.ToString();
    //    string FinYear = null;

    //    if (DateTime.Today.Month > 3)
    //        FinYear = CurYear + "-" + NexYear;
    //    else
    //        FinYear = PreYear + "-" + CurYear;
    //    return FinYear.Trim();
    //}
}