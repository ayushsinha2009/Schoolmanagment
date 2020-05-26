using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AdminLogin_AddTeacherTimeTable : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2, dt3, dt4;
    int i, u, d,index;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
        BindDrropDown();
        Btnupdate.Visible = false;
        Btndel.Visible = false;
        Btncncl.Visible = false;
        BtnAdd.Visible = true;
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        i = obj.AddTeacherTimeTable(txtdate.Text, ddnday.SelectedItem.Text, Convert.ToInt32(ddnteacher.SelectedValue), ddnperiod.SelectedItem.Text, txtfrom.Text, txttill.Text, Convert.ToInt32(ddnsubsubject.SelectedValue), Convert.ToInt32(ddnclass.SelectedValue),
            Convert.ToInt32(ddnsection.SelectedValue), "teacher", txtdesc.Text, "Admin", 1, DateTime.Now.ToString());
        if (i > 0)
        {
            lblmsg.Text = "Data Has Been Added";
            BindData();
            ClearFields();
            Response.Redirect("AddTeacherTimeTable.aspx");
        }

    }

    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        u = obj.UpdateTeacherTimeTable(Convert.ToInt32(lblId.Text), txtdate.Text, ddnday.SelectedItem.Text, Convert.ToInt32(gvdetails.SelectedRow.Cells[9].Text), ddnperiod.SelectedItem.Text, txtfrom.Text, txttill.Text, Convert.ToInt32(gvdetails.SelectedRow.Cells[9].Text), Convert.ToInt32(gvdetails.SelectedRow.Cells[11].Text),
            Convert.ToInt32(gvdetails.SelectedRow.Cells[13].Text), "teacher", txtdesc.Text, "Admin", 1, DateTime.Now.ToString());
        if (u > 0)
        {
            lblmsg.Text = "Data Has Been Updated";
            BindData();
            ClearFields();
            Response.Redirect("AddTeacherTimeTable.aspx");
        }
    }

    protected void Btndel_Click(object sender, EventArgs e)
    {
        d = obj.DeleteTeacherTimeTable(Convert.ToInt32(lblId.Text));
        if (d > 0)
        {
            lblmsg.Text = "Data Has Been Deleted";
            ClearFields();
            BindData();

            Btnupdate.Visible = false;
            Btndel.Visible = false;
            Btncncl.Visible = false;
            BtnAdd.Visible = true;
            Response.Redirect("AddTeacherTimeTable.aspx");
        }
    }

    protected void Btncncl_Click(object sender, EventArgs e)
    {
        Btnupdate.Visible = false;
        Btndel.Visible = false;
        Btncncl.Visible = false;
        BtnAdd.Visible = true;
        ClearFields();
        Response.Redirect("AddTeacherTimeTable.aspx");
    }

    protected void gvdetails_SelectedIndexChanged(object sender, EventArgs e)
    {
        index = gvdetails.SelectedIndex;
        lblId.Text = gvdetails.DataKeys[index].Value.ToString();
        txtdate.Text = gvdetails.SelectedRow.Cells[2].Text;
        ddnday.SelectedItem.Text = gvdetails.SelectedRow.Cells[3].Text;
        ddnperiod.SelectedItem.Text = gvdetails.SelectedRow.Cells[4].Text;
        txtfrom.Text = gvdetails.SelectedRow.Cells[5].Text;
        txttill.Text = gvdetails.SelectedRow.Cells[6].Text; ;
        ddnteacher.SelectedValue = gvdetails.SelectedRow.Cells[7].Text;
        ddnsubsubject.SelectedValue= gvdetails.SelectedRow.Cells[9].Text;
        ddnclass.SelectedValue = gvdetails.SelectedRow.Cells[11].Text;
        ddnsection.SelectedValue = gvdetails.SelectedRow.Cells[13].Text;
        //txtdesc.Text = gvdetails.SelectedRow.Cells[15].Text; 

        Btnupdate.Visible = true;
        Btndel.Visible = true;
        Btncncl.Visible = true;
        BtnAdd.Visible = false;
    }

    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        BindData();
    }

    public void BindData()
    {
        dt = obj.SelectTimeTable();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }

    public void BindDrropDown()
    {
        dt1 = obj.SelectteacherIdWise();
        ddnteacher.DataSource = dt1;
        ddnteacher.DataTextField = "FullName";
        ddnteacher.DataValueField = "teacherid";
        ddnteacher.DataBind();
        ddnteacher.Items.Insert(0, new ListItem("-Select-", "0"));
        
        //--BindSubject--
        dt2 = obj.SelectSubSubjectMasterIdWise();
        ddnsubsubject.DataSource = dt2;
        ddnsubsubject.DataTextField = "SubSubjectName";
        ddnsubsubject.DataValueField = "SubId";
       ddnsubsubject.DataBind();
        ddnsubsubject.Items.Insert(0, new ListItem("-Select-", "0"));
        
        //--BindClass--
        dt3 = obj.SelectClassIdWiseA();
        ddnclass.DataSource = dt3;
        ddnclass.DataTextField = "ClassName";
        ddnclass.DataValueField = "ClassId";
        ddnclass.DataBind();
        ddnclass.Items.Insert(0, new ListItem("-Select-", "0"));
        
        //--BindSection--
        dt4 = obj.SelectSectionIdWiseA();
        ddnsection.DataSource = dt4;
        ddnsection.DataTextField = "SectionName";
        ddnsection.DataValueField = "SectionId";
        ddnsection.DataBind();
        ddnsection.Items.Insert(0, new ListItem("-Select-", "0"));
        

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
        Response.ContentType = "application/TimeTable.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }

    public void ClearFields()
    {
        txtdate.Text = "";
        ddnteacher.SelectedIndex = 0;
        ddnperiod.SelectedIndex = 0;
        txtfrom.Text = "";
        txttill.Text = "";
        ddnsubsubject.SelectedIndex = 0;
        ddnclass.SelectedIndex = 0;
        ddnsection.SelectedIndex = 0;
        txtdesc.Text = "";
    }




}