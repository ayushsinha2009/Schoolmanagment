﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AAcountant_TeacherSalary : System.Web.UI.Page
{

    #region class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2, dt3, dt4;
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
        dt1 = obj.CheckteacherSalary(Convert.ToInt32(ddnteacher.SelectedValue), txtdate.Text, ddnmonth.SelectedItem.Text);
        if (dt1.Rows.Count > 0)
        {
            lblmsg.Text = "Records Already Exist";
            BtnAdd.Enabled = false;
        }
        if (dt1.Rows.Count <= 0)
        {
            i = obj.GenerateteacherSalary(Convert.ToInt32(ddnteacher.SelectedValue), txtdate.Text, ddnmonth.SelectedItem.Text, "Accountant", Convert.ToInt32(Session["UUId"]), DateTime.Now.ToString());
            if (i > 0)
            {
                lblmsg.Text = "Data Added";
                BindData();
                ClearFields();
            }
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
        Response.ContentType = "application/teacherGeneratesalary.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }

    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        BindData();
    }
    public void BindData()
    {
        dt = obj.SelectteacherGenerateSalary();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }

    protected void ddnstaff_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt3 = obj.CheckTeacherSalary(Convert.ToInt32(ddnteacher.SelectedValue));
        dt4 = obj.CheckteacherAttendance(Convert.ToInt32(ddnteacher.SelectedValue));
        if (dt3.Rows.Count > 0)
        {
            gvsalary.DataSource = dt3;
            gvsalary.DataBind();
        }
        if (dt4.Rows.Count > 0)
        {
            gvattendance.DataSource = dt4;
            gvattendance.DataBind();
        }
        if (dt3.Rows.Count <= 0 || dt4.Rows.Count <= 0)
        {
            lblmsg.Text = "No Data";
            BtnAdd.Enabled = false;
        }
    }


    public void BindDropDown()
    {
        dt2 = obj.SelectteacherIdWise();
        ddnteacher.DataSource = dt2;
        ddnteacher.DataTextField = "FullName";
        ddnteacher.DataValueField = "teacherid";
        //ddnstaff.DataBind();
        ddnteacher.DataBind();
        ddnteacher.Items.Insert(0, new ListItem("-Select-", "0"));
    }

    public void ClearFields()
    {
        ddnteacher.SelectedIndex = 0;
        txtdate.Text = "";
        ddnmonth.SelectedIndex = 0;
    }
}