using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class TTeacher_Promotions : System.Web.UI.Page
{
    #region class declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2, dt3, dt4;
    int i, j;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
            BindDropDown();
        }
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow gvrow in gvdetails.Rows)
        {
            var checkbox = gvrow.FindControl("CheckBox1") as CheckBox;

            if (checkbox.Checked)
            {
                var lblID = gvrow.FindControl("Label1") as Label;
                i = obj.AddClassPromotion(Convert.ToInt32(lblID.Text), Convert.ToInt32(ddnpclass.SelectedValue), Convert.ToInt32(ddnpsection.SelectedValue), "Promoted", "Teacher", Convert.ToInt32(Session["tuid"]), DateTime.Now.ToString());
                j = obj.UpdateClassAllottment(Convert.ToInt32(lblID.Text), Convert.ToInt32(ddnpclass.SelectedValue), Convert.ToInt32(ddnpsection.SelectedValue));
            }
            if (!checkbox.Checked)
            {
                var lblID = gvrow.FindControl("Label1") as Label;
                i = obj.AddClassPromotion(Convert.ToInt32(lblID.Text), Convert.ToInt32(ddnpclass.SelectedValue), Convert.ToInt32(ddnpsection.SelectedValue), "Not Promoted", "Teacher", Convert.ToInt32(Session["tuid"]), DateTime.Now.ToString());
            }


            dt1 = obj.GetStudent(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue));
            if (dt1.Rows.Count > 0)
            {
                gvdetails.DataSource = dt1;
                gvdetails.DataBind();
            }
        }
        BindData();
    }
    public void BindData()
    {
        dt = obj.SelectClassPromotion();
        gvdetails1.DataSource = dt;
        gvdetails1.DataBind();
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

        ddnpsection.DataSource = dt3;
        ddnpsection.DataTextField = "SectionName";
        ddnpsection.DataValueField = "SectionId";
        //ddnstaff.DataBind();
        ddnpsection.DataBind();
        ddnpsection.Items.Insert(0, new ListItem("-Select-", "0"));
    }


    protected void gvdetails1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails1.PageIndex = e.NewPageIndex;
        BindData();
    }
    protected void ddnsection_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt1 = obj.GetStudent(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue));
        if (dt1.Rows.Count > 0)
        {
            gvdetails.DataSource = dt1;
            gvdetails.DataBind();
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
        Response.ContentType = "application/StudentPromotion.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);

        gvdetails1.GridLines = GridLines.Both;
        gvdetails1.HeaderStyle.Font.Bold = true;
        gvdetails1.RenderControl(htmltextwrtter);


        Response.End();
    }

}