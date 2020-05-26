using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class TTeacher_AddStudentAttendance : System.Web.UI.Page
{
    #region class declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2, dt3, dt4;
    int i;
    string strmonth, strday;
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
        strmonth = DateTime.Now.ToString("MMMM");
        DateTime dt = DateTime.Today;
        strday = dt.DayOfWeek.ToString();
        dt4 = obj.CheckStudentAttendance(txtdate.Text, strmonth, strday);
        if (dt4.Rows.Count > 0)
        {
            lblmsg.Text = "Data Already Exist";
            //BtnAdd.Enabled = false;
        }
        if (dt4.Rows.Count <= 0)
        {
            foreach (GridViewRow gvrow in gvdetails.Rows)
            {
                var checkbox = gvrow.FindControl("CheckBox1") as CheckBox;

                if (checkbox.Checked)
                {
                    var lblID = gvrow.FindControl("Label1") as Label;
                    i = obj.AddStudentAttendance(Convert.ToInt32(lblID.Text), txtdate.Text, strmonth, strday,"P", "Teacher", Convert.ToInt32(Session["tuid"]), DateTime.Now.ToString());
                }
                if (!checkbox.Checked)
                {
                    var lblID = gvrow.FindControl("Label1") as Label;
                    i = obj.AddStudentAttendance(Convert.ToInt32(lblID.Text), txtdate.Text, strmonth, strday, "A", "Teacher", Convert.ToInt32(Session["tuid"]), DateTime.Now.ToString());
                }

            }
            lblmsg.Text = "Data Has Been Saved";
            BindData();
            dt1 = null;

            gvdetails.DataSource = dt1;
            gvdetails.DataBind();

            ClearFields();

        }
    }
    public void ClearFields()
    {
        txtdate.Text = "";
        //ddnpresent.SelectedIndex = 0;
        ddnclass.SelectedIndex = 0;
        ddnsection.SelectedIndex = 0;
        BindDropDown();
    }
    protected void ddnsection_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt1 = obj.GetStudent(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue));
        if (dt1.Rows.Count > 0)
        {
            gvdetails.DataSource = dt1;
            gvdetails.DataBind();
        }
        if (dt1.Rows.Count <= 0)
        {
            dt1 = obj.GetStudentOptional(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue), Convert.ToInt32(Session["tuid"]));
            gvdetails.DataSource = dt1;
            gvdetails.DataBind();
        }
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
    }

    public void BindData()
    {
        dt = obj.GetStudenAttendance(Convert.ToInt32(Session["tuid"]));
        gvdetails1.DataSource = dt;
        gvdetails1.DataBind();
    }



    protected void gvdetails1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails1.PageIndex = e.NewPageIndex;
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
}