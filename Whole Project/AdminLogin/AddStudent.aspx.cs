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
public partial class AdminLogin_AddStudent : System.Web.UI.Page
{
    #region Class Declartion
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2, dt3, dt4,dt5,dt6,dtstate,dtcity,dt7,dt8;
    int i, j, u, d,index, stdntid;
    string strphoto, s, s1;
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

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        if (studentPhoto.HasFile)
        {
            //create the path to save the file 
            string fileName = Path.Combine(Server.MapPath("~/StudentPhoto"), studentPhoto.FileName);
            //save the file to our local path
            studentPhoto.SaveAs(fileName);
            //AlumniImage.ImageUrl = "~/AlumniPhoto/" + PhotoUpload.FileName;
            strphoto = studentPhoto.FileName;
        }
        i = obj.AddStudent(txtfname.Text, txtmname.Text, txtlname.Text, ddngender.SelectedItem.Text, txtdob.Text,ddnbloodgroup.SelectedItem.Text, txtenrollment.Text, txtrollno.Text, txtaadhar.Text, "~/StudentPhoto/" + strphoto,
            txtcaddress.Text, txtpaddress.Text,Convert.ToInt32(ddnstate.SelectedValue), Convert.ToInt32(ddncity.SelectedValue),txtpin.Text,txthno.Text, txtsno.Text, txtfathername.Text, txtfathercno.Text, txtfatherocc.Text, txtfatherdesig.Text,
            txtfatherincome.Text, txtmothername.Text, txtmothercno.Text, txtmotherocc.Text, txtmotherdesig.Text, txtmotherincome.Text, "Admin", 1, DateTime.Now.ToString("dd-MM-yyyy"));
        if (i > 0)
        {
            dt4 = obj.GetCurrentStudentId();
            if (dt4.Rows.Count > 0)
            {
                stdntid = Convert.ToInt32(dt4.Rows[0]["StudentId"]);
            }
            j = obj.AddStudentAllotment(stdntid, "Yes", Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue), "Admin", 1, DateTime.Now.ToString());
            if (j > 0)
            {
                lblmsg.Text = "Data Has Been Added";

                dt1 = obj.SelectStudentAllotment();
                dt = obj.SelectStudent();
                gvdetails.DataSource = dt;
                gvdetails.DataBind();

                // s = "Welcome Mr." + txtfathername.Text + " Welcome To Our School Management Your Ward Had Admitted With Us";
                //s1 = "Welcome Mr." + txtmothername.Text + " Welcome To Our School Management Your Ward Had Admitted With Us";
                //SendSMS(txtfathercno.Text, s);
                //SendSMS(txtmothercno.Text, s1);

                ClearFields();
            }
        }
    }

    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        u = obj.UpdateStudent(Convert.ToInt32(lblId.Text), txtfname.Text, txtmname.Text, txtlname.Text, ddngender.SelectedItem.Text, txtdob.Text, ddnbloodgroup.SelectedItem.Text, txtenrollment.Text, txtrollno.Text, txtaadhar.Text, "~/StudentPhoto/" + strphoto,
            txtcaddress.Text, txtpaddress.Text, Convert.ToInt32(ddnstate.SelectedValue), Convert.ToInt32(ddncity.SelectedValue), txtpin.Text, txthno.Text, txtsno.Text, txtfathername.Text, txtfathercno.Text, txtfatherocc.Text, txtfatherdesig.Text,
            txtfatherincome.Text, txtmothername.Text, txtmothercno.Text, txtmotherocc.Text, txtmotherdesig.Text, txtmotherincome.Text, "Admin", DateTime.Now.ToString("dd-MM-yyyy"));

        if (u > 0)
        {
            lblmsg.Text = "Data Has Been Updated";
            BindData();
            ClearFields();
            Response.Redirect("AddStudent.aspx");
        }

    }

    protected void Btndel_Click(object sender, EventArgs e)
    {
        d = obj.DeleteStudent(Convert.ToInt32(lblId.Text));
        if (d > 0)
        {
            lblmsg.Text = "Data Has Been Deleted";
            ClearFields();
            BindData();

            Btnupdate.Visible = false;
            Btndel.Visible = false;
            Btncncl.Visible = false;
            BtnAdd.Visible = true;
            Response.Redirect("AddStudent.aspx");
        }
    }

    protected void Btncncl_Click(object sender, EventArgs e)
    {
        Btnupdate.Visible = false;
        Btndel.Visible = false;
        Btncncl.Visible = false;
        BtnAdd.Visible = true;

        
        ddnclass.Enabled = true;
        ddnsection.Enabled = true;

        ClearFields();
        Response.Redirect("AddStudent.aspx");
    }
    protected void gvdetails_SelectedIndexChanged(object sender, EventArgs e)
    {

        index = gvdetails.SelectedIndex;
        lblId.Text = gvdetails.DataKeys[index].Value.ToString();
        txtfname.Text = gvdetails.SelectedRow.Cells[2].Text;
        if (gvdetails.SelectedRow.Cells[3].Text == "&nbsp;")
        {
            txtmname.Text = "";
        }
        if (gvdetails.SelectedRow.Cells[3].Text != "&nbsp;")
        {
            txtmname.Text = gvdetails.SelectedRow.Cells[3].Text;
        }

        txtlname.Text = gvdetails.SelectedRow.Cells[4].Text;
        ddnclass.SelectedItem.Text= gvdetails.SelectedRow.Cells[5].Text;
        ddnsection.SelectedItem.Text= gvdetails.SelectedRow.Cells[6].Text;
        ddngender.SelectedItem.Text = gvdetails.SelectedRow.Cells[8].Text;
        txtdob.Text = gvdetails.SelectedRow.Cells[9].Text;
        txtenrollment.Text = gvdetails.SelectedRow.Cells[10].Text;
        txtrollno.Text = gvdetails.SelectedRow.Cells[11].Text;
        txtaadhar.Text = gvdetails.SelectedRow.Cells[12].Text;
        txtcaddress.Text = gvdetails.SelectedRow.Cells[14].Text;
        txtpaddress.Text = gvdetails.SelectedRow.Cells[15].Text;

        ddnstate.SelectedValue=gvdetails.SelectedRow.Cells[16].Text;
        ddncity.SelectedValue=gvdetails.SelectedRow.Cells[17].Text;
        txtpin.Text=gvdetails.SelectedRow.Cells[20].Text;

        txthno.Text = gvdetails.SelectedRow.Cells[21].Text;
        txtsno.Text = gvdetails.SelectedRow.Cells[22].Text;
        txtfathername.Text = gvdetails.SelectedRow.Cells[23].Text;
        txtfathercno.Text = gvdetails.SelectedRow.Cells[24].Text;
        txtfatherocc.Text = gvdetails.SelectedRow.Cells[25].Text;
        txtfatherdesig.Text = gvdetails.SelectedRow.Cells[26].Text;
        txtfatherincome.Text = gvdetails.SelectedRow.Cells[27].Text;
        txtmothername.Text = gvdetails.SelectedRow.Cells[28].Text;
        txtmothercno.Text = gvdetails.SelectedRow.Cells[29].Text;
        txtmotherocc.Text = gvdetails.SelectedRow.Cells[30].Text;
        txtmotherdesig.Text = gvdetails.SelectedRow.Cells[31].Text;
        txtmotherincome.Text = gvdetails.SelectedRow.Cells[32].Text;
        ddnbloodgroup.SelectedItem.Text= gvdetails.SelectedRow.Cells[33].Text;



        ddnclass.Enabled = false;
        ddnsection.Enabled = false;

        Btnupdate.Visible = true;
        Btndel.Visible = true;
        Btncncl.Visible = true;
        BtnAdd.Visible = false;
    }
    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        dt = obj.SelectStudent();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();

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
        Response.ContentType = "application/Studentdetails.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);
        //gvdetails1.GridLines = GridLines.Both;
        //gvdetails1.HeaderStyle.Font.Bold = true;
        //gvdetails1.RenderControl(htmltextwrtter);
        Response.End();
    }

    public void BindData()
    {
        dt = obj.SelectStudent();
        gvdetails.DataSource = dt;
        gvdetails.DataBind();

        //dt1 = obj.SelectStudentAllotment();
        //gvdetails1.DataSource = dt1;
        //gvdetails1.DataBind();
    }

    public void BindDropDown()
    {
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

        dtstate = obj.SelectState();
        ddnstate.DataSource = dtstate;
        ddnstate.DataTextField = "State_Name";
        ddnstate.DataValueField = "State_ID";
        ddnstate.DataBind();
        

        dtcity = obj.SelectCity();
        ddncity.DataSource = dtcity;
        ddncity.DataTextField = "CityName";
        ddncity.DataValueField = "City_ID";
        ddncity.DataBind();
       
    }

    public void ClearFields()
    {
        txtfname.Text = "";
        txtmname.Text = "";
        txtlname.Text = "";
        ddngender.SelectedIndex = 0;
        txtdob.Text = "";
        txtenrollment.Text = "";
        txtrollno.Text = "";
        txtaadhar.Text = "";
        txtcaddress.Text = "";
        txtpaddress.Text = "";
        txtsno.Text = "";
        txtfathername.Text = "";
        txtfathercno.Text = "";
        txtfatherocc.Text = "";
        txtfatherdesig.Text = "";
        txtfatherincome.Text = "";
        txtmothername.Text = "";
        txtmothercno.Text = "";
        txtmotherocc.Text = "";
        txtmotherdesig.Text = "";
        txtmotherincome.Text = "";
        ddnstate.SelectedIndex = 0;
        ddncity.SelectedIndex = 0;
        txtpin.Text = "";
        ddnclass.SelectedIndex = 0;
        ddnsection.SelectedIndex = 0;
    }
    #region Send SMS
    public void SendSMS(string mobile, string msg)
    {
        // use the API URL here  

        // Create a request object  

        string strUrl = "http://priority.muzztech.in/sms_api/sendsms.php?username=garindiagroup&password=muzztech&sendername=MRKMRT&mobile=" + mobile + "&message=" + msg + " More Info Call +91-9793676367";
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




    protected void chkboxsame_CheckedChanged(object sender, EventArgs e)
    {
        if (chkboxsame.Checked)
        {
            txtpaddress.Text = txtcaddress.Text;
        }

        if (!chkboxsame.Checked)
        {
            txtpaddress.Text = "";
        }
    }
    protected void ddnclass_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt5 = obj.SearchStudentClassWise(Convert.ToInt32(ddnclass.SelectedValue));
        gvdetails.DataSource = dt5;
        gvdetails.DataBind();
    }
    protected void ddnsection_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt6 = obj.SearchStudent(Convert.ToInt32(ddnclass.SelectedValue), Convert.ToInt32(ddnsection.SelectedValue));
        gvdetails.DataSource = dt6;
        gvdetails.DataBind();
    }



    protected void ddnstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt7 = obj.GetCity(Convert.ToInt32(ddnstate.SelectedValue));
        ddncity.DataSource = dt7;
        ddncity.DataTextField = "CityName";
        ddncity.DataValueField = "City_ID";
        ddncity.DataBind();
      
    }

    protected void txtrollno_TextChanged(object sender, EventArgs e)
    {
        dt8 = obj.CheckStudentRollNo(txtrollno.Text);
        if (dt8.Rows.Count > 0)
        {
            lblmsg.Text = "Roll No Already Exist";
            txtrollno.Text = "";
        }
        if (dt8.Rows.Count <= 0)
        {
          
            txtrollno.Text = "";
        }
    }
}