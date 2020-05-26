using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AdminLogin_ViewMarks : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt,dt2,dt3,dt4;
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
        dt = obj.AdminViewMarks();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }
    public void BindDropDown()
    {
        dt2 = obj.SelectClassIdWiseA();
        ddnclass.DataSource = dt2;
        ddnclass.DataTextField = "ClassName";
        ddnclass.DataValueField = "ClassId";
        //ddnstaff.DataBind();
        ddnclass.DataBind();
        ddnclass.Items.Insert(0, new ListItem("-Select-", "0"));

        dt3 = obj.SelectSectionIdWiseA();
        ddnsection.DataSource = dt3;
        ddnsection.DataTextField = "SectionName";
        ddnsection.DataValueField = "SectionId";
        //ddnstaff.DataBind();
        ddnsection.DataBind();
        ddnsection.Items.Insert(0, new ListItem("-Select-", "0"));

    }

    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
       gvdetails.PageIndex= e.NewPageIndex;
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
        Response.ContentType = "application/StaffType.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }

    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        dt4 = obj.ViewMarks(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue));
        if (dt4.Rows.Count > 0)
        {
            gvdetails.DataSource = dt4;
            gvdetails.DataBind();
        }
        if (dt4.Rows.Count <= 0)
        {
            gvdetails.DataSource = dt4;
            gvdetails.DataBind();
        }
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewMarks.aspx");
    }
}