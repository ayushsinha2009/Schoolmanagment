using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AdminLogin_AddClassTeacher : System.Web.UI.Page
{
    #region class declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2,dt3,dtcheck;
    int i, u,d,index;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
            BindDropdown();
            Btnupdate.Visible = false;
            Btndel.Visible = false;
            Btncncl.Visible = false;
            BtnAdd.Visible = true;
        }
    }

    public void BindData()
    {
        dt = obj.SelectClassTeacher();
        if (dt.Rows.Count > 0)
        {
            gvdetails.DataSource = dt;
            gvdetails.DataBind();
        }
        if (dt.Rows.Count <= 0)
        {
            btnexcel.Visible = false;
        }
    }
    public void BindDropdown()
    {
        dt1 = obj.SelectClassIdWiseA();
        ddnclass.DataSource = dt1;
        ddnclass.DataTextField = "ClassName";
        ddnclass.DataValueField = "ClassId";
        //ddnstaff.DataBind();
        ddnclass.DataBind();
        ddnclass.Items.Insert(0, new ListItem("-Select-", "0"));

        dt2 = obj.SelectSectionIdWiseA();
        ddnsec.DataSource = dt2;
        ddnsec.DataTextField = "SectionName";
        ddnsec.DataValueField = "SectionId";
        //ddnstaff.DataBind();
        ddnsec.DataBind();
        ddnsec.Items.Insert(0, new ListItem("-Select-", "0"));

        dt3 = obj.SelectteacherIdWise();
        ddnteacher.DataSource = dt3;
        ddnteacher.DataTextField = "FullName";
        ddnteacher.DataValueField = "teacherid";
        //ddnstaff.DataBind();
        ddnteacher.DataBind();
        ddnteacher.Items.Insert(0, new ListItem("-Select-", "0"));
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        dtcheck = obj.CheckTeacher(Convert.ToInt32(ddnteacher.SelectedValue));
        if (dtcheck.Rows.Count > 0)
        {
            lblmsg.Text = "Teacher Already Appointed As a Class Teacher";
        }
        if (dtcheck.Rows.Count <= 0)
        {
            i = obj.AddClassTeacher(Convert.ToInt32(ddnteacher.SelectedValue), Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsec.SelectedValue), "Yes", "Admin", 1, DateTime.Now.ToString());
            if (i > 0)
            {
                lblmsg.Text = "Data Has Been Added";
                BindData();
                ClearFields();
                Response.Redirect("AddClassTeacher.aspx");

            }
        }
    }

    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        dtcheck = obj.CheckTeacher(Convert.ToInt32(ddnteacher.SelectedValue));
        if (dtcheck.Rows.Count > 0)
        {
            lblmsg.Text = "Teacher Already Appointed As a Class Teacher";
        }
        if (dtcheck.Rows.Count <= 0)
        {
            u = obj.UpdateClassTeacher(Convert.ToInt32(lblId.Text), Convert.ToInt32(ddnteacher.SelectedValue), Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsec.SelectedValue), "Yes", DateTime.Now.ToString());
            if (u > 0)
            {
                lblmsg.Text = "Data Has Been Updated";
                BindData();
                ClearFields();
                Response.Redirect("AddClassTeacher.aspx");

            }
        }
    }

    protected void Btndel_Click(object sender, EventArgs e)
    {
        d = obj.DeleteClassTeacher(Convert.ToInt32(lblId.Text));
        if (d > 0)
        {
            lblmsg.Text = "Data Has Been Deleted";
            BindData();
            ClearFields();
            Response.Redirect("AddClassTeacher.aspx");

        }
    }

    protected void Btncncl_Click(object sender, EventArgs e)
    {
        Btnupdate.Visible = false;
        Btndel.Visible = false;
        Btncncl.Visible = false;
        BtnAdd.Visible = true;
        ClearFields();
        Response.Redirect("AddClassTeacher.aspx");
    }

    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        BindData();
    }

    protected void gvdetails_SelectedIndexChanged(object sender, EventArgs e)
    {
        index = gvdetails.SelectedIndex;
        lblId.Text = gvdetails.DataKeys[index].Value.ToString();
        ddnteacher.SelectedValue = gvdetails.SelectedRow.Cells[2].Text;
        ddnclass.SelectedValue= gvdetails.SelectedRow.Cells[4].Text;
        ddnsec.SelectedValue= gvdetails.SelectedRow.Cells[6].Text;
        Btnupdate.Visible = true;
        Btndel.Visible = true;
        Btncncl.Visible = true;
        BtnAdd.Visible = false;
        lblmsg.Text = "";
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
        Response.ContentType = "application/StaffType.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }

    public void ClearFields()
    {
        ddnteacher.SelectedIndex = 0;
        ddnclass.SelectedIndex = 0;
        ddnsec.SelectedIndex =0;
    }
}