using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AdminLogin_AddAllotment : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt,dt1,dt2,dt3,dt4,dt5,dt6;
    int i,u,d,index;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
            BindDropDown();
            Btnupdate.Visible = false;
            Btndel.Visible = false;
            Btncncl.Visible = false;
            BtnAdd.Visible = true;
        }
    }
    #region Bind Data
    public void BindData()
    {
        dt = obj.SelectAllotment();
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

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        i = obj.AddAllotment(Convert.ToInt32(ddnteacher.SelectedValue), Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue), Convert.ToInt32(ddnsubsubject.SelectedValue), "Admin", DateTime.Now.ToString());
        if(i>0)
        {
            lblmsg.Text = "Data Added";
            ClearFields();
            BindData();
            Response.Redirect("AddAllotment.aspx");
        }
    }
    public void ClearFields()
    {
        ddnteacher.SelectedIndex = 0;
        ddnclass.SelectedIndex = 0;
        ddnsection.SelectedIndex = 0;
        ddnsubsubject.SelectedIndex = 0;
    }
    public void BindDropDown()
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

        dt5 = obj.SelectSubjectMasterIdWise();
        ddnsubject.DataSource = dt5;
        ddnsubject.DataTextField = "SubjectName";
        ddnsubject.DataValueField = "SubjectId";
        ddnsubject.DataBind();
        ddnsubject.Items.Insert(0, new ListItem("-Select-", "0"));


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
        Response.ContentType = "application/Allotment.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }

    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        u = obj.UpdateAllotment(Convert.ToInt32(lblId.Text), Convert.ToInt32(ddnteacher.SelectedValue), Convert.ToInt32(ddnclass.SelectedValue),
            Convert.ToInt32(ddnsection.SelectedValue), Convert.ToInt32(ddnsubsubject.SelectedValue), DateTime.Now.ToString());
           if (u > 0)
        {
            lblmsg.Text = "Data Has Been Updated";
            ClearFields();
            BindData();
            Response.Redirect("AddAllotment.aspx");
        }
    }

    protected void Btndel_Click(object sender, EventArgs e)
    {
        d = obj.DeleteAllotment(Convert.ToInt32(lblId.Text));
        if (d > 0)
        {
            lblmsg.Text = "Data Has Been Deleted";
            ClearFields();
            BindData();
            Response.Redirect("AddAllotment.aspx");
        }

    }

    protected void Btncncl_Click(object sender, EventArgs e)
    {
        Btnupdate.Visible = false;
        Btndel.Visible = false;
        Btncncl.Visible = false;
        BtnAdd.Visible = true;
        Response.Redirect("AddAllotment.aspx");
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
        ddnteacher.SelectedValue = gvdetails.SelectedRow.Cells[2].Text;
        ddnclass.SelectedValue = gvdetails.SelectedRow.Cells[4].Text;
        ddnsection.SelectedValue= gvdetails.SelectedRow.Cells[6].Text;
        ddnsubsubject.SelectedValue= gvdetails.SelectedRow.Cells[8].Text;

        Btnupdate.Visible = true;
        Btndel.Visible = true;
        Btncncl.Visible = true;
        BtnAdd.Visible = false;
    }

    protected void ddnsubject_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt6 = obj.SelectSubSubjectMasterIdWise1(Convert.ToInt32(ddnsubject.SelectedValue));
        ddnsubsubject.DataSource = dt6;
        ddnsubsubject.DataTextField = "SubSubjectName";
        ddnsubsubject.DataValueField = "SubId";
        ddnsubsubject.DataBind();
        ddnsubsubject.Items.Insert(0, new ListItem("-Select-", "0"));
    }
}