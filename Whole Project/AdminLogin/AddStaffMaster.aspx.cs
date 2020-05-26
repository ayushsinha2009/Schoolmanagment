using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
public partial class AdminLogin_AddStaffMaster : System.Web.UI.Page
{
    #region Class Declaration
    DataObjects obj = new DataObjects();
    DataTable dt, dt1, dt2, dtdropdown, dtdropdown1, dtdropdown2, dtdropdown3, dt3, dtstaffid, dttime,dtcheck,dtcheck1,dtcheck2,dtcheck3;
    int i, io, iu, u,u1,u2, d, staffid, basic, ta, da, hra, others, actual,index;
    string strphoto;
    #endregion

    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //txtcountry.Text = "India";
            //txtcountry.Enabled = false;
            BindData();
            //BindData1();
            //BindData2();
            Btnupdate.Visible = false;
            Btndel.Visible = false;
            Btncncl.Visible = false;
            BtnAdd.Visible = true;
            BindDropDown();
            BindDropDown1();
            BindDropDownState();
            BindDropDowncity();
        }
    }
    #endregion

    #region Add
    protected void BtnAdd_Click(object sender, EventArgs e)
    {

        if (Photo.HasFile)
        {
            //create the path to save the file 
            string fileName = Path.Combine(Server.MapPath("~/StaffPhoto"), Photo.FileName);
            //save the file to our local path
            Photo.SaveAs(fileName);
            //AlumniImage.ImageUrl = "~/AlumniPhoto/" + PhotoUpload.FileName;
            strphoto = Photo.FileName;
        }
        i = obj.AddStaff(ddnsal.SelectedItem.Text, txtfname.Text, txtmname.Text, txtlname.Text, ddngender.SelectedItem.Text, txtdob.Text, txtaddress.Text, ddnstate.SelectedValue, ddncity.SelectedValue,txtpin.Text,
            "iNDIA", txtcontact.Text, txtmobile.Text, txtaadhar.Text, "~/StaffPhoto/" + strphoto, "General Staff", ddnshifthrs.SelectedValue, ddnstafftype.SelectedItem.Text,txtcode.Text,
            txtusername.Text, txtpwd.Text, "Admin", 1, DateTime.Now.ToString("dd-MM-yyyy"));
        if (i > 0)
        {

            dtstaffid = obj.GetCurrentStaffId();
            if (dtstaffid.Rows.Count > 0)
            {
                staffid = Convert.ToInt32(dtstaffid.Rows[0]["staffId"]);
                io = obj.StaffJoinig(Convert.ToInt32(ddnsmtype.SelectedValue), staffid, txtrole.Text, txtdate.Text, "Available", "Admin", 1, DateTime.Now.ToString());
                if (io > 0)
                {
                    //BindData1();
                    basic = Convert.ToInt32(txtbasic.Text);
                    ta = Convert.ToInt32(txtta.Text);
                    da = Convert.ToInt32(txtda.Text);
                    hra = Convert.ToInt32(txthra.Text);
                    others = Convert.ToInt32(txtother.Text);

                    iu = obj.StaffSalary(staffid, basic, ta, da, hra, others, Convert.ToInt32(txtactual.Text), "Admin", 1, DateTime.Now.ToString());
                    if (iu > 0)
                    {
                        lblmsg.Text = "Data Has Been Added";
                        //BindData2();
                        BindData();
                        Response.Redirect("AddStaffMaster.aspx");
                    }
                }
            }
        }
        ClearFields();

    }
    public void ClearFields()
    {
        ddnsal.SelectedIndex = 0; txtfname.Text = ""; txtmname.Text = ""; txtlname.Text = ""; ddngender.SelectedIndex = 0;
        txtaddress.Text = ""; ddnstate.SelectedIndex = 0; ddncity.SelectedIndex = 0; txtpin.Text = "";  txtcontact.Text = ""; txtmobile.Text = ""; txtaadhar.Text = "";
        
        ddnshifthrs.SelectedIndex = 0; ddnstafftype.SelectedIndex = 0; txtusername.Text = ""; txtpwd.Text = "";txtcode.Text = "";
        ddnsmtype.SelectedIndex = 0; txtrole.Text = ""; txtdate.Text = ""; txtactual.Text = ""; txtbasic.Text = ""; txtta.Text = ""; txtda.Text = ""; txthra.Text = ""; txtother.Text = "";
    }
    #endregion

    #region Update
    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        u = obj.UpdateStaff(Convert.ToInt32(lblId.Text), ddnsal.SelectedItem.Text, txtfname.Text, txtmname.Text, txtlname.Text, ddngender.SelectedItem.Text, txtdob.Text, txtaddress.Text, ddnstate.SelectedValue, ddncity.SelectedValue,
            txtpin.Text,"INDIA", txtcontact.Text, txtmobile.Text, txtaadhar.Text, "General Staff", ddnshifthrs.SelectedValue, ddnstafftype.SelectedItem.Text,txtcode.Text,
            txtusername.Text, txtpwd.Text, "Admin", 1, DateTime.Now.ToString("dd-MM-yyyy"));
        if (u > 0)
        {
            u1 = obj.UpdateStaffJoining(Convert.ToInt32(lblId.Text), txtrole.Text, txtdate.Text, "Available");
            if (u1 > 0)
            {
                basic = Convert.ToInt32(txtbasic.Text);
                ta = Convert.ToInt32(txtta.Text);
                da = Convert.ToInt32(txtda.Text);
                hra = Convert.ToInt32(txthra.Text);
                others = Convert.ToInt32(txtother.Text);
                u2 = obj.UpdateStaffSalary(Convert.ToInt32(lblId.Text), basic, ta, da, hra, others, Convert.ToInt32(txtactual.Text));
            }
            lblmsg.Text = "Data Has Been Updated";
            BindData();
            ClearFields();
            Response.Redirect("AddStaffMaster.aspx");
        }

    }
    #endregion

    #region Delete
    protected void Btndel_Click(object sender, EventArgs e)
    {
        d = obj.DeleteStaff(Convert.ToInt32(lblId.Text));
        if (d > 0)
        {
            lblmsg.Text = "Data Has Been Deleted";
            ClearFields();
            BindData();

            //Btnupdate.Visible = false;
            Btndel.Visible = false;
            Btncncl.Visible = false;
            BtnAdd.Visible = true;
            Response.Redirect("AddStaffMaster.aspx");
        }
    }
    #endregion

    #region Cancel
    protected void Btncncl_Click(object sender, EventArgs e)
    {
        Btnupdate.Visible = false;
        Btndel.Visible = false;
        Btncncl.Visible = false;
        BtnAdd.Visible = true;

        //ddnsmtype.Enabled = true;
        //txtrole.Enabled = true;
        //txtdate.Enabled = true;
        //txtbasic.Enabled = true;
        //txtta.Enabled = true;
        //txtda.Enabled = true;
        //txthra.Enabled = true;
        //txtother.Enabled = true;
       
        //txtcountry.Enabled = false;
        ClearFields();
        BindData();
        Response.Redirect("AddStaffMaster.aspx");
    }
    #endregion

    #region Page Indexing

    protected void gvdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvdetails.PageIndex = e.NewPageIndex;
        BindData();
    }
    #endregion

    #region Select Index Change
    protected void gvdetails_SelectedIndexChanged(object sender, EventArgs e)
    {
        index = gvdetails.SelectedIndex;
        lblId.Text = gvdetails.DataKeys[index].Value.ToString();
        ddnsal.SelectedItem.Text = gvdetails.SelectedRow.Cells[2].Text;
        txtfname.Text = gvdetails.SelectedRow.Cells[3].Text;
        if (gvdetails.SelectedRow.Cells[4].Text == "&nbsp;")
        {
            txtmname.Text = "";
        }
        if (gvdetails.SelectedRow.Cells[4].Text != "&nbsp;")
        {
            txtmname.Text = gvdetails.SelectedRow.Cells[4].Text;
        }
        txtlname.Text = gvdetails.SelectedRow.Cells[5].Text;
        ddngender.SelectedItem.Text = gvdetails.SelectedRow.Cells[6].Text;
        txtdob.Text = gvdetails.SelectedRow.Cells[7].Text;
        txtaddress.Text = gvdetails.SelectedRow.Cells[8].Text;
        ddnstate.SelectedValue = gvdetails.SelectedRow.Cells[9].Text;
        ddncity.SelectedValue = gvdetails.SelectedRow.Cells[10].Text;
        txtpin.Text = gvdetails.SelectedRow.Cells[13].Text;
        txtcontact.Text = gvdetails.SelectedRow.Cells[15].Text;
        txtmobile.Text = gvdetails.SelectedRow.Cells[16].Text;
        txtaadhar.Text = gvdetails.SelectedRow.Cells[17].Text;
        //txtdesc.Text = gvdetails.SelectedRow.Cells[18].Text;
        ddnshifthrs.SelectedValue = gvdetails.SelectedRow.Cells[20].Text;
        ddnstafftype.SelectedItem.Text = gvdetails.SelectedRow.Cells[21].Text;
        txtcode.Text= gvdetails.SelectedRow.Cells[22].Text;
        txtusername.Text = gvdetails.SelectedRow.Cells[23].Text;
        txtpwd.Text = "";
        ddnsmtype.SelectedItem.Text = gvdetails.SelectedRow.Cells[27].Text;
        txtrole.Text=gvdetails.SelectedRow.Cells[27].Text;
        txtdate.Text = gvdetails.SelectedRow.Cells[28].Text;

        txtbasic.Text= gvdetails.SelectedRow.Cells[29].Text;
        txtta.Text= gvdetails.SelectedRow.Cells[30].Text;
        txtda.Text= gvdetails.SelectedRow.Cells[31].Text;
        txthra.Text= gvdetails.SelectedRow.Cells[32].Text;
        txtother.Text= gvdetails.SelectedRow.Cells[33].Text;
        txtactual.Text= gvdetails.SelectedRow.Cells[34].Text;


        //ddnsmtype.Enabled = false;
        //txtrole.Enabled = false;
        //txtdate.Enabled = false;
        //txtbasic.Enabled = false;
        //txtta.Enabled = false;
        //txtda.Enabled = false;
        //txthra.Enabled = false;
        //txtother.Enabled = false;

        Btnupdate.Visible = true;
        Btndel.Visible = true;
        Btncncl.Visible = true;
        BtnAdd.Visible = false;
    }
    #endregion

    public override void VerifyRenderingInServerForm(Control control)
    {
        //required to avoid the runtime error "  
        //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
    }

    #region Export To Excel
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
        Response.ContentType = "application/StaffMaster.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvdetails.GridLines = GridLines.Both;
        gvdetails.HeaderStyle.Font.Bold = true;
        gvdetails.RenderControl(htmltextwrtter);

        //gvdetails1.GridLines = GridLines.Both;
        //gvdetails1.HeaderStyle.Font.Bold = true;
        //gvdetails1.RenderControl(htmltextwrtter);

        //gvdetails2.GridLines = GridLines.Both;
        //gvdetails2.HeaderStyle.Font.Bold = true;
        //gvdetails2.RenderControl(htmltextwrtter);
        //Response.Write(strwritter.ToString());
        Response.End();
    }
    #endregion
    #region Bind Data
    public void BindData()
    {
        dt = obj.SelectStaff();
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
    //#region Bind Data
    //public void BindData1()
    //{
    //    dt1 = obj.SelectStaffJoining();
    //    if (dt.Rows.Count > 0)
    //    {
    //        gvdetails1.DataSource = dt1;
    //        gvdetails1.DataBind();
    //    }
    //    if (dt.Rows.Count <= 0)
    //    {
    //        btnexcel.Visible = false;
    //    }
    //}
    //#endregion
    //#region Bind Data
    //public void BindData2()
    //{
    //    dt2 = obj.SelectStaffSalary();
    //    if (dt.Rows.Count > 0)
    //    {
    //        gvdetails2.DataSource = dt2;
    //        gvdetails2.DataBind();
    //    }
    //    if (dt.Rows.Count <= 0)
    //    {
    //        btnexcel.Visible = false;
    //    }
    //}
    //#endregion

    #region Bind Drop Down
    public void BindDropDown()
    {
        dtdropdown = obj.SelectStaffTypeMasterIdWise();
        ddnsmtype.DataSource = dtdropdown;
        ddnsmtype.DataTextField = "SMType";
        ddnsmtype.DataValueField = "SMId";
        ddnsmtype.DataBind();
        ddnsmtype.Items.Insert(0, new ListItem("-Select-", "0"));
    }
    #endregion

    #region Bind Drop Down 1
    public void BindDropDown1()
    {
        dtdropdown1 = obj.SelectShiftIdWise();
        ddnshifthrs.DataSource = dtdropdown1;
        ddnshifthrs.DataTextField = "ShiftName";
        ddnshifthrs.DataValueField = "ShiftId";
        ddnshifthrs.DataBind();
        ddnshifthrs.Items.Insert(0, new ListItem("-Select-", "0"));
    }
    #endregion
    #region Others
    protected void txtother_TextChanged(object sender, EventArgs e)
    {
        basic = Convert.ToInt32(txtbasic.Text);
        ta = Convert.ToInt32(txtta.Text);
        da = Convert.ToInt32(txtda.Text);
        hra = Convert.ToInt32(txthra.Text);
        others = Convert.ToInt32(txtother.Text);
        actual = (basic + ta + da + hra) - others;
        txtactual.Text = actual.ToString();
    }
    #endregion
    #region Page Indexing
    protected void gvdetails1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //gvdetails1.PageIndex = e.NewPageIndex;
        BindData();
    }
    #endregion

    #region Page Indexing
    protected void gvdetails2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
       // gvdetails2.PageIndex = e.NewPageIndex;
        BindData();
    }
    #endregion

    protected void gvdetails1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gvdetails2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ddnshifthrs_SelectedIndexChanged(object sender, EventArgs e)
    {
        dttime = obj.SelectShiftIdWise1(Convert.ToInt32(ddnshifthrs.SelectedValue));
        if (dttime.Rows.Count > 0)
        {
            lbltime.Visible = true;
            lbltime.Text = "Shool Staff Start Time::" + dttime.Rows[0]["WprkingTimeStart"] + "Shool Staff End Time::" + dttime.Rows[0]["WorkingTimeEnd"];
        }
        if (dttime.Rows.Count <= 0)
        {
            lbltime.Visible = false;
            lbltime.Text = "";
        }
    }

    #region Bind Drop Down State
    public void BindDropDownState()
    {
        dtdropdown2 = obj.SelectState();
        ddnstate.DataSource = dtdropdown2;
        ddnstate.DataTextField = "State_Name";
        ddnstate.DataValueField = "State_ID";
        ddnstate.DataBind();
        
    }
    #endregion
    #region Bind Drop Down City
    public void BindDropDowncity()
    {
        dtdropdown3 = obj.SelectCity();
        ddncity.DataSource = dtdropdown3;
        ddncity.DataTextField = "CityName";
        ddncity.DataValueField = "City_ID";
        ddncity.DataBind();
       
    }
    #endregion

    protected void ddnstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt3 = obj.GetCity(Convert.ToInt32(ddnstate.SelectedValue));
        ddncity.DataSource = dt3;
        ddncity.DataTextField = "CityName";
        ddncity.DataValueField = "City_ID";
        ddncity.DataBind();
      
    }

    protected void txtcode_TextChanged(object sender, EventArgs e)
    {
        dtcheck = obj.CheckStaffemployeecode(txtcode.Text);
        if (dtcheck.Rows.Count > 0)
        {
            lblmsg.Text = "Employee Code Already Exist";
        }
        if (dtcheck.Rows.Count <= 0)
        {
            dtcheck1 = obj.Checkteacheremployeecode(txtcode.Text);
            {
                if (dtcheck1.Rows.Count > 0)
                {
                    lblmsg.Text = "Employee Code Already Exist";
                }
                if (dtcheck1.Rows.Count <= 0)
                {
                    txtcode.Text = "";
                }
            }
        }
    }
    protected void txtmobile_TextChanged(object sender, EventArgs e)
    {
        dtcheck2 = obj.CheckStaffMobilenumber(txtmobile.Text);
        if (dtcheck2.Rows.Count > 0)
        {
            lblmsg.Text = "Employee No. Already Exist";
        }
        if (dtcheck2.Rows.Count <= 0)
        {
            dtcheck3 = obj.CheckTeacherMobilenumber(txtmobile.Text);
            if (dtcheck3.Rows.Count > 0)
            {
                lblmsg.Text = "Employee No. Already Exist";
            }
            if (dtcheck3.Rows.Count <= 0)
            {
                txtmobile.Text = "";
            }
        }

    }
}