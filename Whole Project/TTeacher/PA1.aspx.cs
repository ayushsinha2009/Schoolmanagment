using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class TTeacher_PA1 : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable  dt2, dt3, dt4, dt5;
    int index,value;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            BindDropDown();

        }
    }
    public void BindDropDown()
    {
        dt2 = obj.SelectClassIdWise(Convert.ToInt32(Session["tuid"]));
        ddnclass.DataSource = dt2;
        ddnclass.DataTextField = "ClassName";
        ddnclass.DataValueField = "ClassId";
        //ddnstaff.DataBind();
        ddnclass.DataBind();
        ddnclass.Items.Insert(0, new ListItem("-Select-", "0"));

        dt3 = obj.SelectSectionIdWise(Convert.ToInt32(Session["tuid"]));
        ddnsection.DataSource = dt3;
        ddnsection.DataTextField = "SectionName";
        ddnsection.DataValueField = "SectionId";
        //ddnstaff.DataBind();
        ddnsection.DataBind();
        ddnsection.Items.Insert(0, new ListItem("-Select-", "0"));
    }
    protected void ddnsection_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt4 = obj.CheckSD(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue));
        gvlist.DataSource = dt4;
        gvlist.DataBind();
        value = Convert.ToInt32(dt4.Rows[0]["StudentId"]);
        Session["value"] = value.ToString();
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
        Response.ContentType = "application/StudentPA.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }

    protected void gvlist_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        dt5 = obj.ShowSD(txtdate.Text, txttill.Text, Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue), Convert.ToInt32(Session["value"]));
        gvdetails.DataSource = dt5;
        gvdetails.DataBind();
    }
}