using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class TTeacher_ReportCard : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt;
    int total;
    double v, v1, v2;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            lblfy.Text = GetCurrentFinancialYear();

            if (Session["StudentId"] != null)
            {
                dt = obj.GetStudentMarksStudentWise(Convert.ToInt32(Session["StudentId"]));
                if (dt.Rows.Count > 0)
                {
                    lblstudent.Text = dt.Rows[0]["Student Name"].ToString();
                    lblclass.Text = dt.Rows[0]["ClassName"].ToString();
                    lblsection.Text = dt.Rows[0]["SectionName"].ToString();
                    lblsem.Text = dt.Rows[0]["SemesterType"].ToString();
                    lblreading.Text = dt.Rows[0]["Reading"].ToString();
                    lblwriting.Text = dt.Rows[0]["Writing"].ToString();
                    lblenglish.Text = dt.Rows[0]["English"].ToString();
                    lblhindi.Text = dt.Rows[0]["Hindi"].ToString();
                    lblmaths.Text = dt.Rows[0]["Maths"].ToString();
                    lblscience.Text = dt.Rows[0]["Science"].ToString();
                    lblcomputers.Text = dt.Rows[0]["Computers"].ToString();
                    lblss.Text = dt.Rows[0]["SocialStudies"].ToString();
                    lblhealth.Text = dt.Rows[0]["Health"].ToString();
                    lbledu.Text = dt.Rows[0]["PhysicalEducation"].ToString();
                    lblremarks.Text = dt.Rows[0]["Comment"].ToString();
                    total = Convert.ToInt32(lblreading.Text) + Convert.ToInt32(lblwriting.Text) + Convert.ToInt32(lblenglish.Text) + Convert.ToInt32(lblhindi.Text) + Convert.ToInt32(lblmaths.Text) + Convert.ToInt32(lblscience.Text) + Convert.ToInt32(lblcomputers.Text) + Convert.ToInt32(lblss.Text) + Convert.ToInt32(lblhealth.Text) + Convert.ToInt32(lbledu.Text);
                    lbltotal.Text = total.ToString() + "Out Of 10 Subjects";
                    v = Convert.ToDouble(total);
                    v1 = v / 10;
                    lblpercentage.Text = v1.ToString();
                }
            }
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