﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class AAcountant_Expenses : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt;
    int i;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
        }
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        i = obj.AddExpense(txtitemname.Text, Convert.ToDecimal(txtexpenses.Text), txtdesc.Text, "Accountant", Convert.ToInt32(Session["UUId"]), DateTime.Now.ToString());
        if (i > 0)
        {
            lblmsg.Text = "Data Has Been Added";
            BindData();
            ClearFields();
        }
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
        Response.ContentType = "application/Expenses.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }
    public void BindData()
    {
        dt = obj.SelectExpense();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }

    public void ClearFields()
    {
        txtitemname.Text = "";
        txtexpenses.Text = "";
        txtdesc.Text = "";
    }
}