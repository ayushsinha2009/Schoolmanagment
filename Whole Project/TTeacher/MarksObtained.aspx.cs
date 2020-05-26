using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class TTeacher_MarksObtained : System.Web.UI.Page
{
    #region Declaring Variables
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2,dt3,dt4,dt5,dt6,dt7;
    int i,m1,m2,u,d,index;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
            BindDropDown();
            Btnupdate.Visible = false;
            Btndel.Visible = false;
            Btncncl.Visible = false;
            BtnAdd.Visible = true;
            lblmarks.Text = "Total Marks:-"+"00";
        }
    }

    public void BindData()
    {
        dt = obj.SelectMarksObtained(Convert.ToInt32(Session["tuid"]));
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }
    public void BindDropDown()
    {
        dt2 = obj.SelectClassIdWise(Convert.ToInt32(Session["tuid"]));
        if (dt2.Rows.Count > 0)
        {
            ddnclass.DataSource = dt2;
            ddnclass.DataTextField = "ClassName";
            ddnclass.DataValueField = "ClassId";
            //ddnstaff.DataBind();
            ddnclass.DataBind();
            ddnclass.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        if (dt2.Rows.Count <= 0)
        {
            dt2 = obj.SelectClassIdWiseOptional(Convert.ToInt32(Session["tuid"]));
            ddnclass.DataSource = dt2;
            ddnclass.DataTextField = "ClassName";
            ddnclass.DataValueField = "ClassId";
            //ddnstaff.DataBind();
            ddnclass.DataBind();
            ddnclass.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        dt3 = obj.SelectSectionIdWise(Convert.ToInt32(Session["tuid"]));
        if (dt3.Rows.Count > 0)
        {
            ddnsection.DataSource = dt3;
            ddnsection.DataTextField = "SectionName";
            ddnsection.DataValueField = "SectionId";
            //ddnstaff.DataBind();
            ddnsection.DataBind();
            ddnsection.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        if (dt3.Rows.Count <= 0)
        {
            dt3 = obj.SelectSectionIdWiseOptional(Convert.ToInt32(Session["tuid"]));
            ddnsection.DataSource = dt3;
            ddnsection.DataTextField = "SectionName";
            ddnsection.DataValueField = "SectionId";
            //ddnstaff.DataBind();
            ddnsection.DataBind();
            ddnsection.Items.Insert(0, new ListItem("-Select-", "0"));
        }


        dt7 = obj.SelectSubSubjectIdWise(Convert.ToInt32(Session["tuid"]));
        if (dt7.Rows.Count > 0)
        {
            ddnsub.DataSource = dt7;
            ddnsub.DataTextField = "SubSubjectName";
            ddnsub.DataValueField = "SubId";
            ddnsub.DataBind();
            ddnsub.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        if (dt7.Rows.Count <= 0)
        {

            dt7 = obj.SelectSubSubjectIdWiseOptional(Convert.ToInt32(Session["tuid"]));
            ddnsub.DataSource = dt7;
            ddnsub.DataTextField = "SubjectName";
            ddnsub.DataValueField = "SubjectId";
            ddnsub.DataBind();
            ddnsub.Items.Insert(0, new ListItem("-Select-", "0"));
        }
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {

        //if (dt4.Rows.Count <= 0)
        //{
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                var textbox = gvrow.FindControl("txtmarks") as TextBox;

            if (textbox.Text != "")
            {
                m1 = Convert.ToInt32(textbox.Text);
                m2 = Convert.ToInt32(Session["Marks"]);
                if (m1>m2)
                {
                    lblmsg.Text = "Vlues Should Not Breater Than The Total Marks";
                    //var lblID = gvrow.FindControl("Label1") as Label;
                    //i = obj.AddMarksObtained(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue), Convert.ToInt32(ddnsub.SelectedValue), Convert.ToInt32(lblID.Text), Convert.ToInt32(Session["tuid"]), ddnexamtype.SelectedItem.Text, Convert.ToInt32(textbox.Text), Convert.ToInt32(Session["tuid"]), DateTime.Now.ToString());
                }
                if (m1 < m2)
                {
                    //lblmsg.Text = "Vlues Should Not Breater Than The Total Marks"
                    var lblID = gvrow.FindControl("Label1") as Label;
                    i = obj.AddMarksObtained(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue), Convert.ToInt32(ddnsub.SelectedValue), Convert.ToInt32(lblID.Text), Convert.ToInt32(Session["tuid"]), ddnexamtype.SelectedItem.Text, Convert.ToInt32(textbox.Text), Convert.ToInt32(Session["tuid"]), DateTime.Now.ToString("dd/MM/yyyy"));
                }
            }
                if (textbox.Text == "")
                {
                    var lblID = gvrow.FindControl("Label1") as Label;
                    i = obj.AddMarksObtained(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue), Convert.ToInt32(ddnsub.SelectedValue), Convert.ToInt32(lblID.Text), Convert.ToInt32(Session["tuid"]), ddnexamtype.SelectedItem.Text, Convert.ToInt32("00"), Convert.ToInt32(Session["tuid"]), DateTime.Now.ToString("dd/MM/yyyy"));
                }

            }
        BindData();
        Response.Redirect("MarksObtained.aspx");
        //}
    }

    protected void Btnupdate_Click(object sender, EventArgs e)
    {

    }

    protected void Btndel_Click(object sender, EventArgs e)
    {

    }

    protected void Btncncl_Click(object sender, EventArgs e)
    {

    }
    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        BindData();
    }

    protected void gvdetails_SelectedIndexChanged(object sender, EventArgs e)
    {

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
        Response.ContentType = "application/StudentAttendacedetails.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);

        //gvdetails1.GridLines = GridLines.Both;
        //gvdetails1.HeaderStyle.Font.Bold = true;
        //gvdetails1.RenderControl(htmltextwrtter);


        Response.End();
    }

    protected void ddnsection_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt5 = obj.GetStudent(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue));
        if (dt5.Rows.Count > 0)
        {
            GridView1.DataSource = dt5;
            GridView1.DataBind();
        }
    }

    protected void ddnexamtype_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt4 = obj.CheckMarksObtained(ddnexamtype.SelectedItem.Text, Convert.ToInt32(Session["tuid"]),Convert.ToInt32(ddnsub.SelectedValue));
        if (dt4.Rows.Count > 0)
        {
            lblmsg.Text = "Data Already Exist";
            BtnAdd.Enabled = false;
            //BtnAdd.Enabled = false;
        }
    }

    protected void ddnsub_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt6 = obj.GetTotalMarks(Convert.ToInt32(ddnsub.SelectedValue));
        if(dt6.Rows.Count>0)
        {
            lblmarks.Text ="Total Marks:-"+ dt6.Rows[0]["Marks"].ToString();
            Session["Marks"]=dt6.Rows[0]["Marks"].ToString();
        }
    }
    protected void OnRowEditing(object sender, GridViewEditEventArgs e)
    {
       gvdetails.EditIndex = e.NewEditIndex;
        this.BindData();
    }

    protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = gvdetails.Rows[e.RowIndex];
        int Id = Convert.ToInt32(gvdetails.DataKeys[e.RowIndex].Values[0]);
        string marks = (row.Cells[8].Controls[0] as TextBox).Text;
        u = obj.UpdateMarksObtained(Convert.ToInt32(Id), Convert.ToInt32(marks), DateTime.Now.ToString("dd/MM/yyyy"));
        gvdetails.EditIndex = -1;
        this.BindData();
    }
    protected void OnRowCancelingEdit(object sender, EventArgs e)
    {
        gvdetails.EditIndex = -1;
        this.BindData();
    }

    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Id = Convert.ToInt32(gvdetails.DataKeys[e.RowIndex].Values[0]);
        d = obj.DeleteMarksObtained(Convert.ToInt32(Id));
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