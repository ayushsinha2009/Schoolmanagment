using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AdminLogin_AddTC : System.Web.UI.Page
{
    #region class declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2, dt3, dt4, dt5;
    int i, j;
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
        i = obj.AddtStudentTC(Convert.ToInt32(ddnstudent.SelectedValue), Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsec.SelectedValue), "Generated", txtdesc.Text, "Admin", DateTime.Now.ToString());
        if (i > 0)
        {
            j = obj.UpdateClassAllottment(Convert.ToInt32(ddnstudent.SelectedValue), 0, 0);
            if (j > 0)
            {
                BindData();
                dt5 = obj.GetStudentTC1(Convert.ToInt32(ddnstudent.SelectedValue));
                Response.Redirect("GenerateTC.aspx?Student=" + ddnstudent.SelectedItem.Text + "&Class=" + ddnclass.SelectedItem.Text + "&section=" + ddnsec.SelectedItem.Text + "&FN=" + dt5.Rows[0]["StudentFatherName"].ToString());
            }
        }

    }
    public void BindData()
    {
        dt = obj.GetStudentTC();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }
    public void BindDropDown()
    {
        dt1 = obj.SelectStudentIdWiseA();
        ddnstudent.DataSource = dt1;
        ddnstudent.DataTextField = "FullName";
        ddnstudent.DataValueField = "StudentId";
        //ddnstaff.DataBind();
        ddnstudent.DataBind();
        ddnstudent.Items.Insert(0, new ListItem("-Select-", "0"));

        dt2 = obj.SelectClassIdWiseA();
        ddnclass.DataSource = dt2;
        ddnclass.DataTextField = "ClassName";
        ddnclass.DataValueField = "ClassId";
        //ddnstaff.DataBind();
        ddnclass.DataBind();
        ddnclass.Items.Insert(0, new ListItem("-Select-", "0"));

        dt3 = obj.SelectSectionIdWiseA();
        ddnsec.DataSource = dt3;
        ddnsec.DataTextField = "SectionName";
        ddnsec.DataValueField = "SectionId";
        //ddnstaff.DataBind();
        ddnsec.DataBind();
        ddnsec.Items.Insert(0, new ListItem("-Select-", "0"));
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
        Response.ContentType = "application/StudentTC.ms-excel";
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
            ddnclass.SelectedValue=dt4.Rows[0]["ClassId"].ToString();
            ddnsec.SelectedValue = dt4.Rows[0]["SectionId"].ToString();
        }
    }
}