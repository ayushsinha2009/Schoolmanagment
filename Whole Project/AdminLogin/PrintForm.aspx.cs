using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AdminLogin_PrintForm : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt;
    string rollno;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            if (Request.QueryString["RollNo"] != null)
            {
                dt = obj.PrintForm(Request.QueryString["RollNo"].ToString());
                if (dt.Rows.Count > 0)
                {
                    Label1.Text = dt.Rows[0]["StudentFirstName"].ToString();
                    Label2.Text = dt.Rows[0]["StudentMiddleName"].ToString();
                    Label3.Text = dt.Rows[0]["StudentLastName"].ToString();
                    Photo.ImageUrl = dt.Rows[0]["StudentPhoto"].ToString();
                    Label4.Text = dt.Rows[0]["ClassName"].ToString();
                    Label5.Text = dt.Rows[0]["SectionName"].ToString();
                    Label6.Text = dt.Rows[0]["Gender"].ToString();
                    Label7.Text = dt.Rows[0]["DOB"].ToString();
                    Label26.Text = dt.Rows[0]["BloodGroup"].ToString();
                    Label8.Text = dt.Rows[0]["StudentEnrollmentNo"].ToString();
                    Label9.Text = dt.Rows[0]["StudentRollNo"].ToString();
                    Label10.Text = dt.Rows[0]["StudentAadharNo"].ToString();
                    Label11.Text = dt.Rows[0]["StudentCorrespondanceAddress"].ToString();
                    Label12.Text = dt.Rows[0]["StudentPermanentAddress"].ToString();
                    Label13.Text = dt.Rows[0]["State_Name"].ToString();
                    Label14.Text = dt.Rows[0]["CityName"].ToString();
                    Label15.Text = dt.Rows[0]["Pincode"].ToString();
                    Label16.Text = dt.Rows[0]["HomeContactNo"].ToString();
                    Label17.Text = dt.Rows[0]["StudentContactNo"].ToString();
                    Label18.Text = dt.Rows[0]["StudentFatherName"].ToString();
                    Label19.Text = dt.Rows[0]["StudentFatherContactNo"].ToString();
                    Label20.Text = dt.Rows[0]["StudentFatherOccupation"].ToString();
                    Label21.Text = dt.Rows[0]["StudentFatherDesignation"].ToString();
                    Label22.Text = dt.Rows[0]["StudentMotherName"].ToString();
                    Label23.Text = dt.Rows[0]["StudentMotherContactNo"].ToString();
                    Label24.Text = dt.Rows[0]["StudentMotherOccupation"].ToString();
                    Label25.Text = dt.Rows[0]["StudentMotherDesignation"].ToString();
                }
            }
        }
    }
}