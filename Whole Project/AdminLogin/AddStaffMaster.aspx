<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="AddStaffMaster.aspx.cs" EnableEventValidation="false" Inherits="AdminLogin_AddStaffMaster" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <script>
        function doPrint()
        {
            var prtContent = document.getElementById('<%= gvdetails.ClientID %>');
            prtContent.border = 0; //set no border here
            var WinPrint = window.open('','','left=100,top=100,width=1000,height=1000,toolbar=0,scrollbars=1,status=0,resizable=1');
            WinPrint.document.write(prtContent.outerHTML);
            WinPrint.document.close();
            WinPrint.focus();
            WinPrint.print();
            WinPrint.close();
        }
</script>
    <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="header-icon">
                <i class="fa fa-book"></i>
            </div>
            <div class="header-title">
                <h1>Staff Master</h1>
                <small>Enter details of Staff here..</small>
                <br />
                <a href="AddTeacher.aspx">Add Teaching Staff</a>
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Personal Details</h4>
                            </div>
                        </div>

                        <div class="panel-body">
                            <div class="form-group">
                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                <label>Salutation</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddnsal" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsal" CssClass="form-control" ValidationGroup="c" runat="server">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Mr.</asp:ListItem>
                                    <asp:ListItem Value="2">Mrs.</asp:ListItem>
                                    <asp:ListItem Value="3">Miss.</asp:ListItem>
                                </asp:DropDownList>
                                

                            </div>


                            <div class="form-group">
                                <label>First Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtfname" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtfname" CssClass="form-control" runat="server" placeholder="First Name.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                

                            </div>
                            <div class="form-group">
                                <label>Middle Name</label>
                                <asp:TextBox ID="txtmname" CssClass="form-control" runat="server" placeholder="Middle Name.." autocomplete="off" ValidationGroup="c"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Last Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtlname" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtlname" CssClass="form-control" runat="server" placeholder="Last Name.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                            

                            </div>
                            <div class="form-group">
                                <label>Gender</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddngender" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddngender" ValidationGroup="c" CssClass="form-control" runat="server">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Male</asp:ListItem>
                                    <asp:ListItem Value="2">Female</asp:ListItem>
                                    <asp:ListItem Value="3">TransGender</asp:ListItem>
                                </asp:DropDownList>
                                

                            </div>
                            <div class="form-group">
                                <label>D.O.B.</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtdob" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtdob" CssClass="form-control" runat="server" placeholder="D O B.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:CalendarExtender ID="txtdob_CalendarExtender" ClearTime="true" runat="server" TargetControlID="txtdob" Format="dd/MM/yyyy"></asp:CalendarExtender>
                               

                            </div>
                            <div class="form-group">
                                <label>Address</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtaddress" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtaddress" TextMode="MultiLine" CssClass="form-control" runat="server" autocomplete="off" placeholder="Address.." ValidationGroup="c"></asp:TextBox>
                                
                            </div>
                            <div class="form-group">
                                <label>State</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddnstate" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnstate" ValidationGroup="c" AutoPostBack="true" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddnstate_SelectedIndexChanged"></asp:DropDownList>
                                

                            </div>
                            <div class="form-group">
                                <label>City</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddncity" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddncity" ValidationGroup="c" CssClass="form-control" runat="server"></asp:DropDownList>
                                

                            </div>
                            <div class="form-group">
                                <label>Pincode</label><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtpin" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtpin" CssClass="form-control" runat="server" placeholder="Pin Code.." MaxLength="7" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Home Contact No</label>
                                <asp:TextBox ID="txtcontact" CssClass="form-control" runat="server" placeholder="Contact No.." MaxLength="8" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="txtcontact_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtcontact">
                                </asp:FilteredTextBoxExtender>
                            </div>
                            <div class="form-group">
                                <label>Mobile No.</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtmobile" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtmobile" CssClass="form-control" runat="server" placeholder="Mobile No.." MaxLength="10" autocomplete="off" AutoPostBack="true" ValidationGroup="c" OnTextChanged="txtmobile_TextChanged"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="txtmobile_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtmobile">
                                </asp:FilteredTextBoxExtender>
                                

                            </div>
                            <div class="form-group">
                                <label>Aadhar Card No</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtaadhar" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtaadhar" CssClass="form-control" runat="server" placeholder="Aadhar Card No.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                               

                            </div>




<%--                            <div class="form-group">
                                <label>Description If Any</label>
                                <asp:TextBox ID="txtdesc" CssClass="form-control" runat="server" TextMode="MultiLine" placeholder="Description.." autocomplete="off" ValidationGroup="c"></asp:TextBox>

                            </div>--%>

                            <div class="form-group">
                                <label>Working Shift</label><asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="ddnshifthrs" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnshifthrs" ValidationGroup="c" AutoPostBack="true" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddnshifthrs_SelectedIndexChanged"></asp:DropDownList>
                                <asp:Label ID="lbltime" Visible="false" runat="server"></asp:Label>
                                

                            </div>

                            <div class="form-group">
                                <label>Joining Department</label><asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="ddnstafftype" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnstafftype" ValidationGroup="c" CssClass="form-control" runat="server">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Accounts</asp:ListItem>
                                    <asp:ListItem Value="2">Staff(NON Teaching)</asp:ListItem>

                                </asp:DropDownList>

                                

                            </div>
                            <div class="form-group">
                                <label>Employee Code</label>
                                <asp:TextBox ID="txtcode" CssClass="form-control" runat="server" placeholder="Employee Code.." MaxLength="10" AutoPostBack="true" autocomplete="off" ValidationGroup="c" OnTextChanged="txtcode_TextChanged"></asp:TextBox>
                            </div>
                            
                        </div>
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Joining Details</h4>
                            </div>
                        </div>

                        <div class="panel-body">

                            <div class="form-group">
                                <label>Joining Type</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddnsmtype" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsmtype" ValidationGroup="c" CssClass="form-control" runat="server"></asp:DropDownList>
                                

                            </div>
                            <div class="form-group">
                                <label>Designation</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtrole" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtrole" CssClass="form-control" runat="server" placeholder="Designation.." autocomplete="off" ValidationGroup="c"></asp:TextBox>


                            </div>
                            <div class="form-group">
                                <label>Joining Date</label><asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtdate" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtdate" CssClass="form-control" runat="server" placeholder="Joining Date.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:CalendarExtender ID="txtdate_CalendarExtender" ClearTime="true" runat="server" TargetControlID="txtdate" Format="dd/MM/yyyy"></asp:CalendarExtender>
                                

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Salary Details & Photo & Details </h4>
                            </div>
                        </div>

                        <div class="panel-body">

                            <div class="form-group">
                                <label>Basic</label><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtbasic" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtbasic" CssClass="form-control" runat="server" placeholder="Basic Salary.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="txtbasic_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtbasic">
                                </asp:FilteredTextBoxExtender>
                                

                            </div>
                            <div class="form-group">
                                <label>TA</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtta" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtta" CssClass="form-control" runat="server" placeholder="TA.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="_txtta_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtta">
                                </asp:FilteredTextBoxExtender>
                               
                            </div>
                            <div class="form-group">
                                <label>DA</label><asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtda" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtda" CssClass="form-control" runat="server" placeholder="DA.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="txtda_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtda">
                                </asp:FilteredTextBoxExtender>
                                

                            </div>
                            <div class="form-group">
                                <label>HRA</label><asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txthra" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txthra" CssClass="form-control" runat="server" placeholder="HRA.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="txthra_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txthra">
                                </asp:FilteredTextBoxExtender>
                                

                            </div>
                            <div class="form-group">
                                <label>Others</label><asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtother" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtother" AutoPostBack="true" CssClass="form-control" runat="server" placeholder="Enter Deductions.." autocomplete="off" ValidationGroup="c" OnTextChanged="txtother_TextChanged"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="txtother_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtother">
                                </asp:FilteredTextBoxExtender>
                                

                            </div>
                            <div class="form-group">
                                <label>Actual Salary</label><asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtactual" ErrorMessage="*" autocomplete="off" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtactual" CssClass="form-control" runat="server" ValidationGroup="c"></asp:TextBox>
                                

                            </div>
                             <div class="form-group">
                                <label>Photo Graph</label>
                                <asp:FileUpload ID="Photo" runat="server" />
                            </div>
                            <div class="form-group">
                                <label>User Name.</label><asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtusername" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtusername" CssClass="form-control" runat="server" placeholder="User Name.." ValidationGroup="c"></asp:TextBox>
                                

                            </div>
                            <div class="form-group">
                                <label>Password</label><asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="txtpwd" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtpwd" CssClass="form-control" TextMode="Password" runat="server" placeholder="Password.." ValidationGroup="c"></asp:TextBox>
                            </div>

                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Staff" ValidationGroup="c" OnClick="BtnAdd_Click" />
                                <asp:Button ID="Btnupdate" CssClass="btn btn-add" runat="server" Text="Update Staff" OnClick="Btnupdate_Click" />
                                <asp:Button ID="Btndel" CssClass="btn btn-add" runat="server" Text="Delete Staff" OnClick="Btndel_Click" />
                                <asp:Button ID="Btncncl" CssClass="btn btn-add" runat="server" Text="Cancel" OnClick="Btncncl_Click" />
                                <asp:Label ID="lblId" Visible="false" runat="server"></asp:Label>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-bd lobidrag">
                        <div class="panel-heading">
                            <div class="panel-title">

                                <h4>Staff Personal, Joining & Salary Details</h4>
                            </div>
                            <div style="float: right;">
                                  <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Print Data" OnClientClick="doPrint()" />

                            </div>

                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView ID="gvdetails" CssClass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC" EmptyDataText="No Record!" BorderStyle="None" BorderWidth="1px" DataKeyNames="staffid" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="25" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvdetails_SelectedIndexChanged">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <Columns>
                                            <asp:TemplateField HeaderText = "S.No." ItemStyle-Width="100">
                                                <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                          </asp:TemplateField>
                                     
                                        <asp:BoundField DataField="Salutation" HeaderText="Salutation" />
                                        <asp:BoundField DataField="StaffFirstName" HeaderText="First Name" />
                                        <asp:BoundField DataField="StaffMiddleName" HeaderText="Middle Name" />
                                        <asp:BoundField DataField="StaffLastName" HeaderText="Last Name" />
                                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                                        <asp:BoundField DataField="DOB" HeaderText="Date Of Birth" />
                                        <asp:BoundField DataField="StaffAddress" HeaderText="Address" />
                                        <asp:BoundField DataField="StaffState" HeaderText="State ID"  />
                                        <asp:BoundField DataField="StaffCity" HeaderText="City ID" />
                                        <asp:BoundField DataField="State_Name" HeaderText="State Name"  />
                                        <asp:BoundField DataField="CityName" HeaderText="City Name" />
                                        <asp:BoundField DataField="Pincode" HeaderText="Pincode" />
                                        <asp:BoundField DataField="StaffCountry" HeaderText="Staff Country" />
                                        <asp:BoundField DataField="StaffContactNo" HeaderText="Contact No(0522-)" />
                                        <asp:BoundField DataField="StaffMobileNo" HeaderText="Mobile No(+91-)" />
                                        <asp:BoundField DataField="StaffAadharcardNo" HeaderText="Staff Aadharcard No" />
                                        <asp:ImageField DataImageUrlField="StaffPhoto" ControlStyle-Height="100" ControlStyle-Width="100" HeaderText="photo"></asp:ImageField>
                                        <asp:BoundField DataField="StaffDescription" HeaderText="Description" />
                                        <asp:BoundField DataField="TotalWorkinghrs" HeaderText="Total Working Shift" />
                                        <asp:BoundField DataField="StaffType" HeaderText="Type" />
                                        <asp:BoundField DataField="employeecode" HeaderText="Employee Code" />
                                        <asp:BoundField DataField="username" HeaderText="User Name" />
                                        <asp:BoundField DataField="pwd" HeaderText="Password" />
                                        <asp:BoundField DataField="TotalWorkinghrs" HeaderText="Total Working Hrs" Visible="false" />
                                        <asp:BoundField DataField="Createdby" HeaderText="Created By" />
                                        <asp:BoundField DataField="Staffrole" HeaderText="Designation" />
                                        <asp:BoundField DataField="JoiningDate" HeaderText="Joining Date" />
                                        <asp:BoundField DataField="Basic" HeaderText="Basic Sal." />
                                        <asp:BoundField DataField="TA" HeaderText="TA" />
                                        <asp:BoundField DataField="DA" HeaderText="DA" />
                                        <asp:BoundField DataField="HRA" HeaderText="HRA" />
                                        <asp:BoundField DataField="OtherDeductions" HeaderText="Other Deductions" />
                                        <asp:BoundField DataField="ActualPay" HeaderText="Actual Pay" />
                                        <asp:BoundField DataField="Createdon" HeaderText="Created on" />
                                        <asp:BoundField DataField="Updatedon" HeaderText="Updated on" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--<div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-bd lobidrag">
                   <%--     <div class="panel-heading">
                            <div class="panel-title">

                                <h4>Joining  Details</h4>
                            </div>

                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView ID="gvdetails1" Visible="false" CssClass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC" EmptyDataText="No Record!" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvdetails1_PageIndexChanging" PageSize="25" AutoGenerateSelectButton="false" OnSelectedIndexChanged="gvdetails1_SelectedIndexChanged">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="JoiningId" HeaderText=" S.No. " />
                                        <asp:BoundField DataField="StaffName" HeaderText="Name" />
                                        <asp:BoundField DataField="SMType" HeaderText="SMType" />

                                        <asp:BoundField DataField="Staffrole" HeaderText="Designation" />
                                        <asp:BoundField DataField="JoiningDate" HeaderText="Joining Date" />
                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                        <asp:BoundField DataField="Createdby" HeaderText="Created By" />

                                        
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>

            <%--<div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-bd lobidrag">
                     <%--   <div class="panel-heading">
                            <div class="panel-title">

                                <h4>Salary  Details</h4>
                            </div>

                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView ID="gvdetails2" Visible="false" CssClass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC" EmptyDataText="No Record!" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvdetails2_PageIndexChanging" PageSize="25" AutoGenerateSelectButton="false" OnSelectedIndexChanged="gvdetails2_SelectedIndexChanged">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <Columns>



                                        <asp:BoundField DataField="salaryid" HeaderText=" S.No. " />
                                        <asp:BoundField DataField="StaffName" HeaderText="Name" />
                                        <asp:BoundField DataField="Basic" HeaderText="Basic Sal." />
                                        <asp:BoundField DataField="TA" HeaderText="TA" />
                                        <asp:BoundField DataField="DA" HeaderText="DA" />
                                        <asp:BoundField DataField="HRA" HeaderText="HRA" />
                                        <asp:BoundField DataField="OtherDeductions" HeaderText="Other Deductions" />
                                        <asp:BoundField DataField="ActualPay" HeaderText="Actual Pay" />
                                        <asp:BoundField DataField="Createdby" HeaderText="Created By" />
                                        

                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>


        </section>

    </div>
</asp:Content>

