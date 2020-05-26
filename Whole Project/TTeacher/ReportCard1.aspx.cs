using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class TTeacher_ReportCard1 : System.Web.UI.Page
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
                    lble1.Text = dt.Rows[0]["English_Ist"].ToString();
                    lble2.Text = dt.Rows[0]["English_IInd"].ToString();
                    lblh1.Text = dt.Rows[0]["Hindi_Ist"].ToString();
                    lblh2.Text = dt.Rows[0]["Hindi_IInd"].ToString();
                    lblm1.Text = dt.Rows[0]["Math_Ist"].ToString();
                    lblm2.Text = dt.Rows[0]["Math_IInd"].ToString();
                    lblphysics.Text = dt.Rows[0]["Physics"].ToString();
                    lblchem.Text = dt.Rows[0]["Chemistry"].ToString();
                    lblbio.Text = dt.Rows[0]["Bio"].ToString();
                    lblcomputers.Text = dt.Rows[0]["Computers"].ToString();
                    lblss.Text = dt.Rows[0]["SocialStudies"].ToString();
                    total = Convert.ToInt32(lble1.Text) + Convert.ToInt32(lble2.Text)+ Convert.ToInt32(lblh1.Text) + Convert.ToInt32(lblh2.Text) + Convert.ToInt32(lblm1.Text) + Convert.ToInt32(lblm2.Text) + Convert.ToInt32(lblphysics.Text)+ Convert.ToInt32(lblchem.Text) + Convert.ToInt32(lblbio.Text)+ Convert.ToInt32(lblcomputers.Text) + Convert.ToInt32(lblss.Text) ;
                    lbltotal.Text = total.ToString() + "Out Of 11 Subjects";
                    v = Convert.ToDouble(total);
                    v1 = v / 11;
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