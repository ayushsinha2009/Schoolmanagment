using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AdminLogin_ShiftMaster : System.Web.UI.Page
{
    #region Class Declaration 
    DataObjects obj = new DataObjects();
    DataTable dt;
    int i, u, d,index;
    #endregion
    #region Page Load
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
        i = obj.AddShifts(txtshiftname.Text, txttimes.Text, txttimee.Text, txttwhrs.Text, Convert.ToInt32(ddnwh.SelectedValue), "Admin", 1, DateTime.Now.ToString());
        if (i > 0)
        {
            lblmsg.Text = "Data Has Been Added";
            BindData();
            ClearFields();
            Response.Redirect("ShiftMaster.aspx");
        }

    }
    #endregion

    #region Update
    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        u = obj.UpdateShifts(Convert.ToInt32(lblId.Text), txtshiftname.Text, txttimes.Text, txttimee.Text, txttwhrs.Text, Convert.ToInt32(ddnwh.SelectedValue), "Admin", 1, DateTime.Now.ToString());
        if (u > 0)
        {
            lblmsg.Text = "Data Has Been Updated";
            ClearFields();
            BindData();

            Btnupdate.Visible = false;
            Btndel.Visible = false;
            Btncncl.Visible = false;
            BtnAdd.Visible = true;
            Response.Redirect("ShiftMaster.aspx");
        }
    }
    #endregion

    #region Delete

    protected void Btndel_Click(object sender, EventArgs e)
    {
        d = obj.DeleteShifts(Convert.ToInt32(lblId.Text));
        if (d > 0)
        {
            lblmsg.Text = "Data Has Been Deleted";
            ClearFields();
            BindData();

            Btnupdate.Visible = false;
            Btndel.Visible = false;
            Btncncl.Visible = false;
            BtnAdd.Visible = true;
            Response.Redirect("ShiftMaster.aspx");
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
        Response.Redirect("ShiftMaster.aspx");
    }
    #endregion
    #region Select
    protected void gvdetails_SelectedIndexChanged(object sender, EventArgs e)
    {
        index = gvdetails.SelectedIndex;
        lblId.Text = gvdetails.DataKeys[index].Value.ToString();
        txtshiftname.Text = gvdetails.SelectedRow.Cells[2].Text;
        txttimes.Text = gvdetails.SelectedRow.Cells[3].Text;
        txttimee.Text = gvdetails.SelectedRow.Cells[4].Text;
        txttwhrs.Text = gvdetails.SelectedRow.Cells[5].Text;
        ddnwh.SelectedValue = gvdetails.SelectedRow.Cells[6].Text;

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
    public void BindData()
    {
        dt = obj.SelectShift();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }
    #region Clear Fields
    public void ClearFields()
    {
        txtshiftname.Text = "";
        txttimes.Text = "";
        txttimee.Text = "";
        txttwhrs.Text = "";
        ddnwh.SelectedIndex = 0;
    }
    #endregion


    protected void txttimee_TextChanged(object sender, EventArgs e)
    {
        DateTime d1 = DateTime.Parse(txttimes.Text);
        DateTime d2 = DateTime.Parse(txttimee.Text);
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
        //Response.ContentType = "application/ShiftDetail.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }
}