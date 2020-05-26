using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AdminLogin_GenIDCard : System.Web.UI.Page
{
    #region class declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2, dt3, dt4;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            BindDropDown();
        }
    }

    public void BindDropDown()
    {
        dt1 = obj.SelectStudentIdWiseA();
        ddnstudent.DataSource = dt1;
        ddnstudent.DataTextField = "FullName";
        ddnstudent.DataValueField = "StudentId";
        //ddnstaff.DataBind();
        ddnstudent.DataBind();
        ddnstudent.Items.Insert(0, new ListItem("-Select-", "0"));

        dt2 = obj.SelectClassIdWiseA();
        ddnclass.DataSource = dt2;
        ddnclass.DataTextField = "ClassName";
        ddnclass.DataValueField = "ClassId";
        //ddnstaff.DataBind();
        ddnclass.DataBind();
        ddnclass.Items.Insert(0, new ListItem("-Select-", "0"));

        dt3 = obj.SelectSectionIdWiseA();
        ddnsec.DataSource = dt3;
        ddnsec.DataTextField = "SectionName";
        ddnsec.DataValueField = "SectionId";
        //ddnstaff.DataBind();
        ddnsec.DataBind();
        ddnsec.Items.Insert(0, new ListItem("-Select-", "0"));
    }
    protected void ddnstudent_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt4 = obj.GetStudentClasssection(Convert.ToInt32(ddnstudent.SelectedValue));
        if (dt4.Rows.Count > 0)
        {
            ddnclass.SelectedValue = dt4.Rows[0]["ClassId"].ToString();
            ddnsec.SelectedValue = dt4.Rows[0]["SectionId"].ToString();
        }
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("IDCard.aspx?Id="+Convert.ToInt32(ddnstudent.SelectedValue));
    }
}