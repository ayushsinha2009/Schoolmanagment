using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AdminLogin_VehicleMaster : System.Web.UI.Page
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
    public void BindData()
    {
        dt = obj.SelectVehicle();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        i = obj.AddVehicle(ddnvehicletype.SelectedItem.Text, txtvehicleno.Text, txtdriver.Text, txtconductor.Text, txtaadhar.Text, txtaadhar1.Text, txtdesc.Text, "Admin", 1, DateTime.Now.ToString());
        if (i > 0)
        {
            lblmsg.Text = "Data Has Been Added";
            BindData();
            ClearFields();
            Response.Redirect("VehicleMaster.aspx");
        }
    }
    public void ClearFields()
    {
        ddnvehicletype.SelectedIndex = 0;
        txtvehicleno.Text = "";
        txtdriver.Text = "";
        txtconductor.Text = "";
        txtaadhar.Text = "";
        txtaadhar1.Text = "";
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
        Response.ContentType = "application/VehicleDetails.ms-excel";
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

    protected void gvdetails_SelectedIndexChanged(object sender, EventArgs e)
    {
        index = gvdetails.SelectedIndex;
        lblId.Text = gvdetails.DataKeys[index].Value.ToString();
        ddnvehicletype.SelectedItem.Text = gvdetails.SelectedRow.Cells[2].Text;
        txtvehicleno.Text = gvdetails.SelectedRow.Cells[3].Text;
        txtdriver.Text = gvdetails.SelectedRow.Cells[4].Text;
        txtconductor.Text = gvdetails.SelectedRow.Cells[5].Text;
        txtaadhar.Text = gvdetails.SelectedRow.Cells[6].Text;
        txtaadhar1.Text = gvdetails.SelectedRow.Cells[7].Text;
        txtdesc.Text = gvdetails.SelectedRow.Cells[8].Text;

        Btnupdate.Visible = true;
        Btndel.Visible = true;
        Btncncl.Visible = true;
        BtnAdd.Visible = false;

    }

    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        u = obj.UpdateVehicle(Convert.ToInt32(lblId.Text), ddnvehicletype.SelectedItem.Text, txtvehicleno.Text, txtdriver.Text, txtconductor.Text, txtaadhar.Text,txtaadhar1.Text, txtdesc.Text, DateTime.Now.ToString());
        if (u > 0)
        {
            lblmsg.Text = "Data Has Been Updated";
            ClearFields();
            BindData();
            Btnupdate.Visible = false;
            Btndel.Visible = false;
            Btncncl.Visible = false;
            BtnAdd.Visible = true;
            lblmsg.Text = "";
            Response.Redirect("VehicleMaster.aspx");
        }
    }

    protected void Btndel_Click(object sender, EventArgs e)
    {
        d = obj.DeleteVehicle(Convert.ToInt32(lblId.Text));
        if (d > 0)
        {
            lblmsg.Text = "Data Has Been Deleted";
            ClearFields();
            BindData();

            Btnupdate.Visible = false;
            Btndel.Visible = false;
            Btncncl.Visible = false;
            BtnAdd.Visible = true;
            lblmsg.Text = "";
            Response.Redirect("VehicleMaster.aspx");
        }
    }

    protected void Btncncl_Click(object sender, EventArgs e)
    {
        Btnupdate.Visible = false;
        Btndel.Visible = false;
        Btncncl.Visible = false;
        BtnAdd.Visible = true;
        ClearFields();
        Response.Redirect("VehicleMaster.aspx");
    }
}