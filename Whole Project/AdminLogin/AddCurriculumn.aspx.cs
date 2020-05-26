using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AdminLogin_AddCurriculumn : System.Web.UI.Page
{

    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt;
    int i,u,d,index;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
            Btnupdate.Visible = false;
            Btndel.Visible = false;
            Btncncl.Visible = false;
            BtnAdd.Visible = true;
        }
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        i = obj.AddCurriculmn(txtdate.Text, txttopic.Text, txtdesc.Text, "Admin", 1, DateTime.Now.ToString());
        if (i > 0)
        {
            lblmsg.Text = "Data Inserted";
            BindData();
            ClearFields();
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
        Response.ContentType = "application/Curriculmn.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }

    public void BindData()
    {
        dt = obj.SelectCurriculumn();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }

    public void ClearFields()
    {
        txtdate.Text = "";
        txttopic.Text = "";
        txtdesc.Text = "";
    }
    #region Paging
    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        BindData();
    }
    #endregion

    protected void gvdetails_SelectedIndexChanged(object sender, EventArgs e)
    {
        index = gvdetails.SelectedIndex;
        lblId.Text = gvdetails.DataKeys[index].Value.ToString();
        txtdate.Text=gvdetails.SelectedRow.Cells[2].Text;
        txttopic.Text= gvdetails.SelectedRow.Cells[3].Text;
        //txtclassname.Text = gvdetails.SelectedRow.Cells[2].Text;
        txtdesc.Text = gvdetails.SelectedRow.Cells[4].Text;
        Btnupdate.Visible = true;
        Btndel.Visible = true;
        Btncncl.Visible = true;
        BtnAdd.Visible = false;
    }

    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        u = obj.UpdateCurriculum(Convert.ToInt32(lblId.Text), txtdate.Text, txttopic.Text, txtdesc.Text);
        if (u > 0)
        {
            lblmsg.Text = "Data Has Been Updated";
            ClearFields();
            Response.Redirect("AddCurriculumn.aspx");
        }
    }

    protected void Btncncl_Click(object sender, EventArgs e)
    {
        Btnupdate.Visible = false;
        Btndel.Visible = false;
        Btncncl.Visible = false;
        BtnAdd.Visible = true;
        ClearFields();
        lblmsg.Text = "";
        Response.Redirect("AddCurriculumn.aspx");
    }

    protected void Btndel_Click(object sender, EventArgs e)
    {
        d = obj.DeleteCurriculum(Convert.ToInt32(lblId.Text));
        if (u > 0)
        {
            lblmsg.Text = "Data Has Been Deleted";
            ClearFields();
            Response.Redirect("AddCurriculumn.aspx");
        }
    }
}