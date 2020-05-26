using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Mail;
public partial class TTeacher_Performance : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2, dt3, dt4;
    string str, str1, s, s1;
    int i;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
            BindDropDown();
        }
    }

    protected void ddnstudent_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt4 = obj.GetStudentClasssection(Convert.ToInt32(ddnstudent.SelectedValue));
        if (dt4.Rows.Count > 0)
        {
            ddnclass.SelectedValue = dt4.Rows[0]["ClassId"].ToString();
            ddnsection.SelectedValue = dt4.Rows[0]["SectionId"].ToString();
            str = dt4.Rows[0]["StudentFatherContactNo"].ToString();
            str1 = dt4.Rows[0]["StudentMotherContactNo"].ToString();
        }
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        i = obj.AddStudentPerformance(Convert.ToInt32(ddnstudent.SelectedValue), Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue),
            ddnlevel.SelectedItem.Text, txtdesc.Text, "Teacher", Convert.ToInt32(Session["tuid"]), DateTime.Now.ToString());
        if (i > 0)
        {
            lblmsg.Text = "Data Has Been Inserted";

            s = "Welcome Mr." + str + " Your Ward Performance is" + txtdesc.Text;
            s1 = "Welcome Mrs." + str1 + " Your Ward Performance is" + txtdesc.Text;
            SendSMS(str, s);
            SendSMS(str1, s1);
            BindData();
            ClearFields();
        }
    }

    public void ClearFields()
    {
        ddnstudent.SelectedIndex = 0; ddnclass.SelectedIndex = 0; ddnsection.SelectedIndex = 0;
        ddnlevel.SelectedIndex = 0; txtdesc.Text = "";
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
        Response.ContentType = "application/PerFormance.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        Response.End();
    }
    protected void gvdetails1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        BindData();
    }

    public void BindData()
    {
        dt = obj.SelectStudentPerformance(Convert.ToInt32(Session["tuid"]));
        gvdetails.DataSource = dt;
        gvdetails.DataBind();
    }
    public void BindDropDown()
    {
        dt1 = obj.SelectStudentIdWise(Convert.ToInt32(Session["tuid"]));
        if (dt1.Rows.Count > 0)
        {
            ddnstudent.DataSource = dt1;
            ddnstudent.DataTextField = "FullName";
            ddnstudent.DataValueField = "StudentId";
            //ddnstaff.DataBind();
            ddnstudent.DataBind();
            ddnstudent.Items.Insert(0, new ListItem("-Select-", "0"));
        }

        if (dt1.Rows.Count<= 0)
        {
            dt1= obj.SelectStudentIdWiseOptional(Convert.ToInt32(Session["tuid"]));
            ddnstudent.DataSource = dt1;
            ddnstudent.DataTextField = "FullName";
            ddnstudent.DataValueField = "StudentId";
            //ddnstaff.DataBind();
            ddnstudent.DataBind();
            ddnstudent.Items.Insert(0, new ListItem("-Select-", "0"));
        }

            dt2 = obj.SelectClassIdWise(Convert.ToInt32(Session["tuid"]));
        if (dt2.Rows.Count > 0)
        {
            ddnclass.DataSource = dt2;
            ddnclass.DataTextField = "ClassName";
            ddnclass.DataValueField = "ClassId";
            //ddnstaff.DataBind();
            ddnclass.DataBind();
            ddnclass.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        if (dt2.Rows.Count <= 0)
        {
            dt2 = obj.SelectClassIdWiseOptional(Convert.ToInt32(Session["tuid"]));
            ddnclass.DataSource = dt2;
            ddnclass.DataTextField = "ClassName";
            ddnclass.DataValueField = "ClassId";
            //ddnstaff.DataBind();
            ddnclass.DataBind();
            ddnclass.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        dt3 = obj.SelectSectionIdWise(Convert.ToInt32(Session["tuid"]));
        if (dt3.Rows.Count > 0)
        {
            ddnsection.DataSource = dt3;
            ddnsection.DataTextField = "SectionName";
            ddnsection.DataValueField = "SectionId";
            //ddnstaff.DataBind();
            ddnsection.DataBind();
            ddnsection.Items.Insert(0, new ListItem("-Select-", "0"));
        }
        if (dt3.Rows.Count <= 0)
        {
            dt3 = obj.SelectSectionIdWiseOptional(Convert.ToInt32(Session["tuid"]));
            ddnsection.DataSource = dt3;
            ddnsection.DataTextField = "SectionName";
            ddnsection.DataValueField = "SectionId";
            //ddnstaff.DataBind();
            ddnsection.DataBind();
            ddnsection.Items.Insert(0, new ListItem("-Select-", "0"));
        }
    }

    #region Send SMS
    public void SendSMS(string mobile, string msg)
    {
        // use the API URL here  

        // Create a request object  

        string strUrl = "http://priority.muzztech.in/sms_api/sendsms.php?username=garindiagroup&password=muzztech&sendername=MRKMRT&mobile=" + mobile + "&message=" + msg + " More Info Call +91-7497901256";
        WebRequest request = HttpWebRequest.Create(strUrl);
        // Get the response back  
        HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        Stream s = (Stream)response.GetResponseStream();
        StreamReader readStream = new StreamReader(s);
        string dataString = readStream.ReadToEnd();
        response.Close();
        s.Close();
        readStream.Close();
    }
    #endregion


}