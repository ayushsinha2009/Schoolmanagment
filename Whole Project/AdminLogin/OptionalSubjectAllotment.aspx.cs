using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AdminLogin_OptionalSubjectAllotment : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2, dt3, dt4,dt5,dt6,dt7,dtu,dtd,dtcheck;
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
    public void BindData()
    {
        dt = obj.SelectOptionalSubjectsAllotment();
        gvdetails1.DataSource = dt;
        gvdetails1.DataBind();
    }
    public void BindDropDown()
    {
        dt1 = obj.SelectClassIdWiseA();
        ddnclass.DataSource = dt1;
        ddnclass.DataTextField = "ClassName";
        ddnclass.DataValueField = "ClassId";
        //ddnstaff.DataBind();
        ddnclass.DataBind();
        ddnclass.Items.Insert(0, new ListItem("-Select-", "0"));

        dt2 = obj.SelectSectionIdWiseA();
        ddnsection.DataSource = dt2;
        ddnsection.DataTextField = "SectionName";
        ddnsection.DataValueField = "SectionId";
        //ddnstaff.DataBind();
        ddnsection.DataBind();
        ddnsection.Items.Insert(0, new ListItem("-Select-", "0"));

        //dt3 = obj.SelectOptionalSubjects();
        //ddnsubject.DataSource = dt3;
        //ddnsubject.DataTextField = "SubjectName";
        //ddnsubject.DataValueField = "SubjectId";
        ////ddnstaff.DataBind();
        //ddnsubject.DataBind();
        //ddnsubject.Items.Insert(0, new ListItem("-Select-", "0"));

        //dt4 = obj.SelectOptionalSubSubjects();
        //ddnsubsubject.DataSource = dt4;
        //ddnsubsubject.DataTextField = "SubSubjectName";
        //ddnsubsubject.DataValueField = "SubId";
        ////ddnstaff.DataBind();
        //ddnsubsubject.DataBind();
        //ddnsubsubject.Items.Insert(0, new ListItem("-Select-", "0"));

        dt5 = obj.SelectOptionalTeacher();
        ddnteacher.DataSource = dt5;
        ddnteacher.DataTextField = "TeacherName";
        ddnteacher.DataValueField = "teacherid";
        //ddnstaff.DataBind();
        ddnteacher.DataBind();
        ddnteacher.Items.Insert(0, new ListItem("-Select-", "0"));
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {

        DateTime dt = DateTime.Today;

        //dt4 = obj.CheckOptionalAllotment(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue));
        //if (dt4.Rows.Count > 0)
        //{
        //    lblmsg.Text = "Data Already Exist";
        //    //BtnAdd.Enabled = false;
        //}
        //if (dt4.Rows.Count <= 0)
        //{
            foreach (GridViewRow gvrow in gvdetails.Rows)
            {
            var DropDownList = gvrow.FindControl("DropDownList1") as DropDownList;
            var lblID = gvrow.FindControl("Label1") as Label;
            var checkbox = gvrow.FindControl("CheckBox1") as CheckBox;


            if (checkbox.Checked)
            {
                
                dtcheck = obj.SelectOptionalStudent(Convert.ToInt32(DropDownList.SelectedValue), Convert.ToInt32(lblID.Text));
                if (dtcheck.Rows.Count > 0)
                {
                    lblmsg.Text = "Data Already Exist";
                }
                if (dtcheck.Rows.Count <= 0)
                {
                    i = obj.AddOptionalSubject(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue), Convert.ToInt32(DropDownList.SelectedValue), Convert.ToInt32(0), Convert.ToInt32(ddnteacher.SelectedValue), Convert.ToInt32(lblID.Text), "Yes", "Admin", 1, DateTime.Now.ToString("dd/MM/yyyy"));
                }
            }
            if (!checkbox.Checked)
            {
               // var lblID = gvrow.FindControl("Label1") as Label;
               // i = obj.AddOptionalSubject(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue), Convert.ToInt32(ddnsubject.SelectedValue), Convert.ToInt32(0), Convert.ToInt32(ddnteacher.SelectedValue), Convert.ToInt32(lblID.Text), "No", "Admin", 1, DateTime.Now.ToString("dd/MM/yyyy"));

            }

        }
            lblmsg.Text = "Data Has Been Saved";
            BindData();
            dt1 = null;

            gvdetails.DataSource = dt1;
            gvdetails.DataBind();

            ClearFields();
        //}
    }
    protected void ddnsection_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt6 = obj.GetStudent(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue));
        //dt7 = obj.GetStudentOptionalA(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue),Convert.ToInt32(ddnsubject.SelectedValue));
        if (dt6.Rows.Count > 0)
        {
            gvdetails.DataSource = dt6;
            gvdetails.DataBind();
        }
        foreach (GridViewRow gvrow in gvdetails.Rows)
        {
            var DropDownList = gvrow.FindControl("DropDownList1") as DropDownList;
            dt3 = obj.SelectOptionalSubjects();
            DropDownList.DataSource = dt3;
            DropDownList.DataTextField = "SubjectName";
            DropDownList.DataValueField = "SubjectId";
            //ddnstaff.DataBind();
            DropDownList.DataBind();
            DropDownList.Items.Insert(0, new ListItem("-Select-", "0"));


        }
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
        Response.ContentType = "application/OptionalSubjectAllotment.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }
    protected void gvdetails1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails1.PageIndex = e.NewPageIndex;
        BindData();
    }
    public void ClearFields()
    {
        ddnclass.SelectedIndex = 0;
        ddnsection.SelectedIndex = 0;
        //ddnsubject.SelectedIndex = 0;
        //ddnsubsubject.SelectedIndex = 0;
        ddnteacher.SelectedIndex = 0;
    }
    protected void OnRowEditing(object sender, GridViewEditEventArgs e)
    {
        gvdetails1.EditIndex = e.NewEditIndex;
        this.BindData();
    }

    protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = gvdetails1.Rows[e.RowIndex];
        int Id = Convert.ToInt32(gvdetails1.DataKeys[e.RowIndex].Values[0]);
        string Alloted = (row.Cells[8].Controls[0] as TextBox).Text;
        //u = obj.UpdateMarksObtained(Convert.ToInt32(Id), Convert.ToInt32(marks), DateTime.Now.ToString("dd/MM/yyyy"));
        dtu = obj.UpdateOptional(Alloted, Convert.ToInt32(Id), DateTime.Now.ToString());
        gvdetails.EditIndex = -1;
        this.BindData();
    }
    protected void OnRowCancelingEdit(object sender, EventArgs e)
    {
        gvdetails1.EditIndex = -1;
        this.BindData();
    }

    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Id = Convert.ToInt32(gvdetails1.DataKeys[e.RowIndex].Values[0]);
        dtd = obj.DeleteOptional(Convert.ToInt32(Id));
        this.BindData();
    }
    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != gvdetails.EditIndex)
        {
            (e.Row.Cells[0].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
        }
    }
}