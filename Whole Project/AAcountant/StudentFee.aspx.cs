using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AAcountant_StudentFee : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2, dt3, dt4, dt5, dt6,dt7;
    int i, v, v1, tf, lf, trnsprtfee, other, total;
    string strmonth;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
            DropDown();
        }
    }

    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        BindData();
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        strmonth = DateTime.Now.ToString("MMMM");
        dt6 = obj.CheckStudentFee(Convert.ToInt32(ddnstudent.SelectedValue), txtdate.Text, strmonth);
        if (dt6.Rows.Count > 0)
        {
            lblmsg.Text = "Data Already Exist";
            BtnAdd.Enabled = false;
        }
        if (dt6.Rows.Count <= 0)
        {
            tf = Convert.ToInt32(txttutionfee.Text);
            lf = Convert.ToInt32(txtlibraryfee.Text);
            trnsprtfee = Convert.ToInt32(txttransportationfee.Text);
            other = Convert.ToInt32(txtother.Text);
            i = obj.AddFee(txtdate.Text, strmonth, Convert.ToInt32(ddnstudent.SelectedValue), Convert.ToInt32(ddnclass.SelectedValue),
                Convert.ToInt32(ddnsection.SelectedValue), Convert.ToInt32(ddnvehicle.SelectedValue), tf, lf, trnsprtfee, other, txtdesc.Text, Convert.ToInt32(txttotal.Text), "Accountant",
                Convert.ToInt32(Session["UUId"]), DateTime.Now.ToString());
            if (i > 0)
            {
                lblmsg.Text = "Data Has Been Added";
                BindData();
                Response.Redirect("StudentFee1.aspx?tf=" + tf + "&lf=" + lf + "&trnsprtFee=" + trnsprtfee + "&Others=" + other+"&Total="+txttotal.Text+"&desc="+txtdesc.Text+"&Cat="+ddncat.SelectedItem.Text);
                // ClearFields();
            }
        }
    }
    protected void txtother_TextChanged(object sender, EventArgs e)
    {
        tf = Convert.ToInt32(txttutionfee.Text);
        lf = Convert.ToInt32(txtlibraryfee.Text);
        trnsprtfee = Convert.ToInt32(txttransportationfee.Text);
        other = Convert.ToInt32(txtother.Text);
        total = tf + lf + trnsprtfee + other;
        txttotal.Text = total.ToString();
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

    public void BindData()
    {
        dt = obj.SelectStudentFee();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }
    public void DropDown()
    {
        dt1 = obj.SelectVehicleIdWise();
        ddnvehicle.DataSource = dt1;
        ddnvehicle.DataTextField = "VehicleType";
        ddnvehicle.DataValueField = "VehicleId";
        ddnvehicle.DataBind();
        ddnvehicle.Items.Insert(0, new ListItem("-Select-", "0"));

        dt2 = obj.SelectClassIdWiseA();
        ddnclass.DataSource = dt2;
        ddnclass.DataTextField = "ClassName";
        ddnclass.DataValueField = "ClassId";
        //ddnstaff.DataBind();
        ddnclass.DataBind();
        ddnclass.Items.Insert(0, new ListItem("-Select-", "0"));

        dt3 = obj.SelectSectionIdWiseA();
        ddnsection.DataSource = dt3;
        ddnsection.DataTextField = "SectionName";
        ddnsection.DataValueField = "SectionId";
        //ddnstaff.DataBind();
        ddnsection.DataBind();
        ddnsection.Items.Insert(0, new ListItem("-Select-", "0"));

        dt4 = obj.SelectStudentIdWiseA();
        ddnstudent.DataSource = dt4;
        ddnstudent.DataTextField = "FullName";
        ddnstudent.DataValueField = "StudentId";
        //ddnstaff.DataBind();
        ddnstudent.DataBind();
        ddnstudent.Items.Insert(0, new ListItem("-Select-", "0"));

    }

    protected void ddnstudent_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt5 = obj.GetClassSection(Convert.ToInt32(ddnstudent.SelectedValue));
        if (dt5.Rows.Count > 0)
        {
            v = Convert.ToInt32(dt5.Rows[0]["ClassId"]);
            v1 = Convert.ToInt32(dt5.Rows[0]["SectionId"]);
            ddnclass.SelectedValue= v.ToString();
            ddnsection.SelectedValue = v1.ToString();
        }
    }

    public void ClearFields()
    {
        txtdate.Text = "";
        ddnstudent.SelectedIndex = 0;
        ddnclass.SelectedIndex = 0;
        ddnsection.SelectedIndex = 0;
        ddnvehicle.SelectedIndex = 0;
        txttutionfee.Text = "";
        txtlibraryfee.Text = "";
        txttransportationfee.Text = "";
        txtother.Text = "";
        txttotal.Text = "";
    }
    protected void txtstudent_TextChanged(object sender, EventArgs e)
    {
        dt7 = obj.SearchStudent(txtstudent.Text);
        ddnstudent.DataSource = dt7;
        ddnstudent.DataTextField = "FullName";
        ddnstudent.DataValueField = "StudentId";
        //ddnstaff.DataBind();
        ddnstudent.DataBind();
        ddnstudent.Items.Insert(0, new ListItem("-Select-", "0"));
    }
}