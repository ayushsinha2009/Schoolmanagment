using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class TTeacher_MarksHS : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2, dt3, dt4,dtcheck;
    int i;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
            BindDropDown();
        }
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        dtcheck = obj.CheckStudentMarksHS(Convert.ToInt32(ddnstudent.SelectedValue), Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue), ddnsemester.SelectedItem.Text);
        if (dtcheck.Rows.Count > 0)
        {
            lblmsg.Text = "Marks Already Exist";
        }
        if (dtcheck.Rows.Count <= 0)
        {

            i = obj.AddtStudentMarksHS(Convert.ToInt32(ddnstudent.SelectedValue), Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue), ddnsemester.SelectedItem.Text, Convert.ToInt32(txte1.Text),
            Convert.ToInt32(txte2.Text), Convert.ToInt32(txth1.Text), Convert.ToInt32(txth2.Text), Convert.ToInt32(txtm1.Text), Convert.ToInt32(txtm2.Text), Convert.ToInt32(txtphysics.Text), Convert.ToInt32(txtchem.Text),
            Convert.ToInt32(txtbio.Text), Convert.ToInt32(txtcomputers.Text), Convert.ToInt32(txtss.Text), "Teacher", Convert.ToInt32(Session["tuid"]), DateTime.Now.ToString());
            if (i > 0)
            {
                Session["StId"] = ddnstudent.SelectedValue;
                lblmsg.Text = "Data Has Been Added";
                BindData();
                Response.Redirect("ReportCard1.aspx");
            }
        }
    }
    public void BindData()
    {
        dt = obj.GetStudentMarksHS();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }

  

    public void BindDropDown()
    {
        dt1 = obj.SelectStudentIdWise2();
        ddnstudent.DataSource = dt1;
        ddnstudent.DataTextField = "FullName";
        ddnstudent.DataValueField = "StudentId";
        //ddnstaff.DataBind();
        ddnstudent.DataBind();
        ddnstudent.Items.Insert(0, new ListItem("-Select-", "0"));

        dt2 = obj.SelectClassIdWise(Convert.ToInt32(Session["tuid"]));
        ddnclass.DataSource = dt2;
        ddnclass.DataTextField = "ClassName";
        ddnclass.DataValueField = "ClassId";
        //ddnstaff.DataBind();
        ddnclass.DataBind();
        ddnclass.Items.Insert(0, new ListItem("-Select-", "0"));

        dt3 = obj.SelectSectionIdWise(Convert.ToInt32(Session["tuid"]));
        ddnsection.DataSource = dt3;
        ddnsection.DataTextField = "SectionName";
        ddnsection.DataValueField = "SectionId";
        //ddnstaff.DataBind();
        ddnsection.DataBind();
        ddnsection.Items.Insert(0, new ListItem("-Select-", "0"));
    }

    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        BindData();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        //required to avoid the runtime error "  
        //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
    }
    protected void btnexcel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.ClearContent();
        Response.ClearHeaders();
        Response.Charset = "";
        string FileName = "SMS" + DateTime.Now + ".xls";
        StringWriter strwritter = new StringWriter();
        HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/Marks.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        Response.End();
    }

    protected void ddnstudent_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt4 = obj.GetStudentClasssection(Convert.ToInt32(ddnstudent.SelectedValue));
        if (dt4.Rows.Count > 0)
        {
            ddnclass.SelectedValue = dt4.Rows[0]["ClassId"].ToString();
            ddnsection.SelectedValue = dt4.Rows[0]["SectionId"].ToString();
        }
    }

 
}