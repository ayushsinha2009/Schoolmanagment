using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AdminLogin_AddTeacherAttendance : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dtA;
    int i;
    string strmonth,strday;
    #endregion
    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
            BindDropDown();
            txttwhrs.Enabled = false;
        }
    }
    #endregion

    #region Bind Data
    public void BindData()
    {
        dt = obj.SelectteacherAttendance();
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
        DateTime dt = DateTime.Today;
        strday = dt.DayOfWeek.ToString();
        dtA = obj.CheckteacherAttendance(txtdate.Text, strmonth, strday, Convert.ToInt32(ddnteacher.SelectedValue));
        if (dtA.Rows.Count > 0)
        {
            lblmsg.Text = "Data Already Exist";
            BtnAdd.Enabled = false;
        }
        if (dtA.Rows.Count <= 0)
        {
            i = obj.teacherAttendance(Convert.ToInt32(ddnteacher.SelectedValue), txtdate.Text,strmonth, strday, txttimein.Text, txttimeout.Text, txttwhrs.Text, ddnprsnt.SelectedItem.Text, "Admin", 1, DateTime.Now.ToString());
            if (i > 0)
            {
                lblmsg.Text = "Attendance Inserted";
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
        Response.ContentType = "application/teacherAttendance.ms-excel";
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

    protected void txttimeout_TextChanged(object sender, EventArgs e)
    {
        DateTime d1 = DateTime.Parse(txttimein.Text);
        DateTime d2 = DateTime.Parse(txttimeout.Text);
        TimeSpan timeFrom = TimeSpan.Parse(d1.ToString("HH:mm"));
        TimeSpan timeTo = TimeSpan.Parse(d2.ToString("HH:mm"));
        TimeSpan timeDiff;
        if (timeFrom.TotalSeconds > timeTo.TotalSeconds)
        {
            d2 = d2.AddDays(1);
            timeDiff = d2.Subtract(d1);
        }
        else
        {
            timeDiff = d2.Subtract(d1);
        }
        txttwhrs.Text = timeDiff.ToString();
    }

    #region Clear Fields
    public void ClearFields()
    {
        ddnteacher.SelectedIndex = 0;
        txtdate.Text = "";
        txttimein.Text = "";
        txttimeout.Text = "";
        txttwhrs.Text = "";
        ddnprsnt.SelectedIndex = 0;
    }

    #endregion
}