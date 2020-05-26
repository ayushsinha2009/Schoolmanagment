using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AdminLogin_SectionMaster : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt = new DataTable();
    int i, u, d,index;
    #endregion
    
    #region Page Upload
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
    #endregion
    
    #region Add
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
        }
        i = obj.AddSection(txtsectionname.Text, txtdesc.Text, "Admin", 1, DateTime.Now.ToString());
        if (i > 0)
        {
            lblmsg.Text = "Data Has Been Saved";
            BindData();
            ClearFields();
            Response.Redirect("SectionMaster.aspx");
        }
    }
    #endregion

    #region Update
    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        u = obj.UpdateSection(Convert.ToInt32(lblId.Text), txtsectionname.Text,  txtdesc.Text);
        if (u > 0)
        {
            lblmsg.Text = "Data Has Been Updated";
            ClearFields();
            BindData();

            Btnupdate.Visible = false;
            Btndel.Visible = false;
            Btncncl.Visible = false;
            BtnAdd.Visible = true;
            Response.Redirect("SectionMaster.aspx");
        }
    }
    #endregion

    #region Delete
    protected void Btndel_Click(object sender, EventArgs e)
    {
        d = obj.DeleteSection(Convert.ToInt32(lblId.Text));
        if (d > 0)
        {
            lblmsg.Text = "Data Has Been Deleted";
            ClearFields();
            BindData();

            Btnupdate.Visible = false;
            Btndel.Visible = false;
            Btncncl.Visible = false;
            BtnAdd.Visible = true;
            Response.Redirect("SectionMaster.aspx");
        }
    }
    #endregion
    
    #region Cancel
    protected void Btncncl_Click(object sender, EventArgs e)
    {
        Btnupdate.Visible = false;
        Btndel.Visible = false;
        Btncncl.Visible = false;
        BtnAdd.Visible = true;
        ClearFields();
        Response.Redirect("SectionMaster.aspx");
    }
    #endregion
    
    #region SelectIndex
    protected void gvdetails_SelectedIndexChanged(object sender, EventArgs e)
    {

        index = gvdetails.SelectedIndex;
        lblId.Text = gvdetails.DataKeys[index].Value.ToString();
        txtsectionname.Text = gvdetails.SelectedRow.Cells[2].Text;
        txtdesc.Text = gvdetails.SelectedRow.Cells[3].Text;
        Btnupdate.Visible = true;
        Btndel.Visible = true;
        Btncncl.Visible = true;
        BtnAdd.Visible = false;
    }
    #endregion
    
    #region Paging
    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        BindData();
    }
    #endregion

    #region Bind Data
    public void BindData()
    {
        dt = obj.SelectSection();
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
    #endregion

    #region Clear Fields
    public void ClearFields()
    {
        txtsectionname.Text = "";
        txtdesc.Text = "";
    }
    #endregion


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
        Response.ContentType = "application/SectionMaster.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }
}