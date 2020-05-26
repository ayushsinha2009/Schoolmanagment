using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class AdminLogin_AddSubSubjectMaster : System.Web.UI.Page
{


    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1,dt2,dt3;
    int i,u,d,index,marks,marks1,count;
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
        dt = obj.SelectSubSubject();
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
    #region Bind DropDown
    public void BindDropDown()
    {
        //--BindSubject--
        dt1 = obj.SelectSubjectMasterIdWise();
        ddnsubject.DataSource = dt1;
        ddnsubject.DataTextField = "SubjectName";
        ddnsubject.DataValueField = "SubjectId";
        ddnsubject.DataBind();
        ddnsubject.Items.Insert(0, new ListItem("-Select-", "0"));
    }
    #endregion

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        marks = Convert.ToInt32(lblmarks.Text);
        marks1 = Convert.ToInt32(txtmarks.Text);
        if (marks1 > marks)
        {
            lblmsg.Text = "Marks Should Not More Then The Total Marks";
        }
        else
        {
            dt3 = obj.CheckSubSubjectMarks(Convert.ToInt32(ddnsubject.SelectedValue));
            if (dt3.Rows.Count > 0)
            {
                count = Convert.ToInt32(dt3.Rows[0]["Marks"]);
                if (count > marks)
                {
                    lblmsg.Text = "You Are Not Allowed To Enter Marks";
                }
                if (count <= marks)
                {
                    i = obj.AddSubSubject(Convert.ToInt32(ddnsubject.SelectedValue), txtsubsubjectname.Text, Convert.ToInt32(txtmarks.Text), "Admin", DateTime.Now.ToString());
                    if (i > 0)
                    {
                        txtsubsubjectname.Text = "";
                        txtmarks.Text = "";
                        BindData();
                    }
               }
            }
            
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
        Response.ContentType = "application/SubSubjectMaster.ms-excel";
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
        ddnsubject.SelectedValue= gvdetails.SelectedRow.Cells[2].Text;
        txtsubsubjectname.Text= gvdetails.SelectedRow.Cells[5].Text;
        txtmarks.Text= gvdetails.SelectedRow.Cells[6].Text;
        dt2 = obj.SelectTotalMarks(Convert.ToInt32(gvdetails.SelectedRow.Cells[2].Text));
        if (dt2.Rows.Count > 0)
        {
            lblmarks.Text = dt2.Rows[0]["TotalMarks"].ToString();
        }
        if (dt2.Rows.Count <= 0)
        {
            lblmarks.Text = "0";
        }

        Btnupdate.Visible = true;
        Btndel.Visible = true;
        Btncncl.Visible = true;
        BtnAdd.Visible = false;
    }

    protected void Btnupdate_Click(object sender, EventArgs e)
    {

        marks = Convert.ToInt32(lblmarks.Text);
        marks1 = Convert.ToInt32(txtmarks.Text);
        if (marks1 > marks)
        {
            lblmsg.Text = "Marks Should Not More Then The Total Marks";
        }
        else
        {
            dt3 = obj.CheckSubSubjectMarks(Convert.ToInt32(ddnsubject.SelectedValue));
            if (dt3.Rows.Count > 0)
            {
                count = Convert.ToInt32(dt3.Rows[0]["Marks"]);
                if (count > marks)
                {
                    lblmsg.Text = "You Are Not Allowed To Update Marks";
                }
                if (count <= marks)
                {
                    u = obj.UpdateSubSubject(Convert.ToInt32(lblId.Text), Convert.ToInt32(ddnsubject.SelectedValue), txtsubsubjectname.Text, Convert.ToInt32(txtmarks.Text), DateTime.Now.ToString());
                    if (u > 0)
                    {
                        lblmsg.Text = "Data Has Been Updated";
                        txtsubsubjectname.Text = "";
                        txtmarks.Text = "";
                        ddnsubject.SelectedIndex = 0;
                        BindData();
                        Btnupdate.Visible = false;
                        Btndel.Visible = false;
                        Btncncl.Visible = false;
                        BtnAdd.Visible = true;
                        lblmsg.Text = "";
                        Response.Redirect("AddSubSubjectMaster.aspx");
                    }
                }
            }

        }

    }

    protected void Btndel_Click(object sender, EventArgs e)
    {
        string confirmValue = Request.Form["confirm_value"];
        if (confirmValue == "Yes")
        {
            d = obj.DeleteSubSubject(Convert.ToInt32(lblId.Text));
            if (d > 0)
            {
                lblmsg.Text = "Data Has Been Deleted";
                txtsubsubjectname.Text = "";
                BindData();

                Btnupdate.Visible = false;
                Btndel.Visible = false;
                Btncncl.Visible = false;
                BtnAdd.Visible = true;
                lblmsg.Text = "";
                Response.Redirect("AddSubSubjectMaster.aspx");
            }
        }
        else
        {
           // this.Page.ClientScript.RegisterStartupScript(this.GetType(), "confirm", "alert('You clicked NO!')", true);
        }


    }

    protected void Btncncl_Click(object sender, EventArgs e)
    {
        Btnupdate.Visible = false;
        Btndel.Visible = false;
        Btncncl.Visible = false;
        BtnAdd.Visible = true;
        Response.Redirect("AddSubSubjectMaster.aspx");
    }

    protected void ddnsubject_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt2 = obj.SelectTotalMarks(Convert.ToInt32(ddnsubject.SelectedValue));
        if (dt2.Rows.Count > 0)
        {
            lblmarks.Text = dt2.Rows[0]["TotalMarks"].ToString();
        }
        if (dt2.Rows.Count <= 0)
        {
            lblmarks.Text = "0";
        }
    }
}