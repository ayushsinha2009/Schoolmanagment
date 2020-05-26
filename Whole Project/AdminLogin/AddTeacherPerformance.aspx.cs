using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AdminLogin_AddTeacherPerformance : System.Web.UI.Page
{

    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dtA;
    int i;
    string strmonth;
    #endregion
    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
            BindDropDown();

        }
    }
    #endregion

    #region Bind Data
    public void BindData()
    {
        dt = obj.SelectteacherPerformance();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }
    #endregion

    #region Bind Drop Down
    public void BindDropDown()
    {
        dt1 = obj.SelectteacherIdWise();
        ddnteacher.DataSource = dt1;
        ddnteacher.DataTextField = "FullName";
        ddnteacher.DataValueField = "teacherid";
        //ddnstaff.DataBind();
        ddnteacher.DataBind();
        ddnteacher.Items.Insert(0, new ListItem("-Select-", "0"));

    }
    #endregion

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        strmonth = DateTime.Now.ToString("MMMM");
        i = obj.teacherPerformance(Convert.ToInt32(ddnteacher.SelectedValue), txtdate.Text, strmonth, ddnlevel.SelectedItem.Text, txtdesc.Text, "Admin", 1, DateTime.Now.ToString());
        if (i > 0)
        {
            lblmsg.Text = "Data Inserted";
            BindData();
            ClearFields();
        }
    }

    public void ClearFields()
    {
        ddnteacher.SelectedIndex = 0;
        txtdate.Text = "";
        
        ddnlevel.SelectedIndex = 0;
        txtdesc.Text = "";
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
        Response.ContentType = "application/teacherPerformance.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }
    #region Paging
    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        BindData();
    }
    #endregion
}