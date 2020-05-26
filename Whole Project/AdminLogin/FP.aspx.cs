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
public partial class AdminLogin_FP : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt1, dt2, dt3;
    string str;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
        }
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        dt1 = obj.CheckAdminMobilenumber(txtno.Text);
        if (dt1.Rows.Count > 0)
        {
            str = "Welcome Admin Your UserName Is::" + dt1.Rows[0]["username"].ToString() + "Your Password Is::" + dt1.Rows[0]["pwd"].ToString();
            SendSMS(txtno.Text, str);
            txtno.Text = "";
        }
        if (dt1.Rows.Count <= 0)
        {
            dt2 = obj.CheckStafMobilenumber(txtno.Text);
            if (dt2.Rows.Count > 0)
            {
                str = "Welcome Staff Your Username Is::" + dt2.Rows[0]["username"].ToString() + "Your Password Is::" + dt2.Rows[0]["pwd"].ToString();
                SendSMS(txtno.Text, str);
                txtno.Text = "";
            }
            if (dt2.Rows.Count <= 0)
            {
                dt3 = obj.CheckeacherMobilenumber(txtno.Text);
                if (dt3.Rows.Count > 0)
                {
                    str = "Welcome Teacher Your Username Is::" + dt3.Rows[0]["username"].ToString() + "Your Password Is::" + dt3.Rows[0]["pwd"].ToString();
                    SendSMS(txtno.Text, str);
                    lblmsg.Text = "Details Has Been Sent";
                    txtno.Text = "";
                }
                if (dt3.Rows.Count <= 0)
                {
                    lblmsg.Text = "Mobile No. Is Invalid";
                    txtno.Text = "";
                }
            }
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