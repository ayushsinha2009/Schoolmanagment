using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_AdminLogin : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dtlogin, dtstafflogin, dtteacherlogin;
    string str;
    #endregion

    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
        }
    }
    #endregion
    protected void Btnlogin_Click(object sender, EventArgs e)
    {
        dtlogin = obj.CheckAdminLogin(txtusername.Text, txtpwd.Text);
        if (dtlogin.Rows.Count > 0)
        {
            Session["UId"] = dtlogin.Rows[0]["UserId"].ToString();
            Session["SN"] = dtlogin.Rows[0]["SchoolName"].ToString();
            //lblmsg.Text = "Valid Credentials";
            Response.Redirect("Dashboard.aspx");
        }
        if (dtlogin.Rows.Count <= 0)
        {
            dtstafflogin = obj.CheckStaffLogin(txtusername.Text, txtpwd.Text);
            if (dtstafflogin.Rows.Count > 0)
            {
                Session["UId"] = dtstafflogin.Rows[0]["staffid"].ToString();
                Session["SN"] = dtstafflogin.Rows[0]["Staff Name"].ToString();
                str = dtstafflogin.Rows[0]["StaffType"].ToString();
                if (str == "Accounts")
                {
                    //lblmsg.Text = "Valid Credentials";
                    Response.Redirect("~/AAcountant/Dashboard.aspx");
                }
            }
            if (dtstafflogin.Rows.Count <= 0)
            {
                dtteacherlogin = obj.CheckTeacherLogin(txtusername.Text, txtpwd.Text);
                if (dtteacherlogin.Rows.Count > 0)
                {
                    Session["UId"] = dtteacherlogin.Rows[0]["teacherid"].ToString();
                    Session["SN"] = dtteacherlogin.Rows[0]["Teacher Name"].ToString();
                    //lblmsg.Text = "Valid Credentials";
                    Response.Redirect("~/TTeacher/Dashboard.aspx");
                }
                if (dtteacherlogin.Rows.Count <= 0)
                {
                    lblmsg.Text = "Invalid Credentials";
                }
                if (dtlogin.Rows.Count <= 0 || dtstafflogin.Rows.Count <= 0 || dtteacherlogin.Rows.Count <= 0)
                { lblmsg.Text = "Invalid Credentials"; }
                //lblmsg.Text="Invalid Credentials";
            }
        }
    }
}