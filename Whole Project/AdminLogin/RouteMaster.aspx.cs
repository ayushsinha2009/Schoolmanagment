using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AdminLogin_RouteMaster : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2, dt3;
    int i,u,d,index;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
            BindDropdown();
            BindDropdown1();
            Btnupdate.Visible = false;
            Btndel.Visible = false;
            Btncncl.Visible = false;
            BtnAdd.Visible = true;
        }
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        i = obj.AddRoute(Convert.ToInt32(ddnvehiclename.SelectedValue), ddnvehicleno.SelectedItem.Text, txtroutefrom.Text, txtrouteto.Text, "Admin", 1, DateTime.Now.ToString());
        if (i > 0)
        {
            lblmsg.Text = "Data Has Been Added";
            BindData();
            ClearFields();
            Response.Redirect("RouteMaster.aspx");
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
        Response.ContentType = "application/RouteDetails.ms-excel";
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
        dt = obj.Selectroute();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }

    public void BindDropdown()
    {
        dt1 = obj.SelectVehicleIdWise();
        ddnvehiclename.DataSource = dt1;
        ddnvehiclename.DataTextField = "VehicleType";
        ddnvehiclename.DataValueField = "VehicleId";
        ddnvehiclename.DataBind();
        ddnvehiclename.Items.Insert(0, new ListItem("-Select-", "0"));
    }
    public void BindDropdown1()
    {
        dt2 = obj.SelectVehicleNoIdWise();
        ddnvehicleno.DataSource = dt2;
        ddnvehicleno.DataTextField = "VehicleNo";
        ddnvehicleno.DataValueField = "VehicleId";
        ddnvehicleno.DataBind();
        ddnvehicleno.Items.Insert(0, new ListItem("-Select-", "0"));
    }
    public void ClearFields()
    {
        ddnvehiclename.SelectedIndex = 0;
        txtroutefrom.Text = "";
        txtrouteto.Text = "";
    }

    protected void ddnvehicleno_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt3 = obj.SelectVehicleNoIdWise1(ddnvehicleno.SelectedItem.Text);
        ddnvehiclename.DataSource = dt3;
        ddnvehiclename.DataTextField = "VehicleType";
        ddnvehiclename.DataValueField = "VehicleId";
        ddnvehiclename.DataBind();
        //ddnvehiclename.Items.Insert(0, new ListItem("-Select-", "0"));

    }

    protected void gvdetails_SelectedIndexChanged(object sender, EventArgs e)
    {
        index = gvdetails.SelectedIndex;
        lblId.Text = gvdetails.DataKeys[index].Value.ToString();

        ddnvehiclename.SelectedValue = gvdetails.SelectedRow.Cells[2].Text;
        ddnvehicleno.SelectedItem.Text = gvdetails.SelectedRow.Cells[4].Text;
        txtroutefrom.Text = gvdetails.SelectedRow.Cells[7].Text;
        txtrouteto.Text = gvdetails.SelectedRow.Cells[8].Text;
        //ddnwh.SelectedValue = gvdetails.SelectedRow.Cells[6].Text;

        Btnupdate.Visible = true;
        Btndel.Visible = true;
        Btncncl.Visible = true;
        BtnAdd.Visible = false;
    }

    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        u = obj.UpdateRoute(Convert.ToInt32(lblId.Text), Convert.ToInt32(ddnvehiclename.SelectedValue), ddnvehicleno.SelectedItem.Text, txtroutefrom.Text, txtrouteto.Text, DateTime.Now.ToString());
        if (u > 0)
        {
            lblmsg.Text = "Data Has Been Updated";
            BindData();
            ClearFields();
            Response.Redirect("RouteMaster.aspx");
        }
    }

    protected void Btndel_Click(object sender, EventArgs e)
    {
        d = obj.Deleteroute(Convert.ToInt32(lblId.Text));
        if (d > 0)
        {
            lblmsg.Text = "Data Has Been Deleted";
            BindData();
            ClearFields();
            Response.Redirect("RouteMaster.aspx");
        }
    }

    protected void Btncncl_Click(object sender, EventArgs e)
    {
        Btnupdate.Visible = false;
        Btndel.Visible = false;
        Btncncl.Visible = false;
        BtnAdd.Visible = true;
        ClearFields();
        Response.Redirect("RouteMaster.aspx");
    }
}