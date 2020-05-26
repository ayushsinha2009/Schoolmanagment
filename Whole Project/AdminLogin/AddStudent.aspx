<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" EnableEventValidation="false" Inherits="AdminLogin_AddStudent" %>

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
                <h1>Student Master</h1>
                <small>Enter details of Student here..</small>
            </div>
        </section>
        <section class="content">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
            <div class="row">
                <div class="col-sm-6" style="float:left;">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Class Allotment Details</h4>
                            </div>
                        </div>

                        <div class="panel-body">

                            <div class="form-group">
                                <label>Class</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddnclass" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnclass" CssClass="form-control" ValidationGroup="c" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddnclass_SelectedIndexChanged"></asp:DropDownList>
                               

                            </div>

                            <div class="form-group">
                                <label>Section</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddnsection" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsection" CssClass="form-control" ValidationGroup="c" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddnsection_SelectedIndexChanged"></asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-6" style="float:right;">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <div class="panel-title">
                                    <h4>Contact Details</h4>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Correspondance Address</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtcaddress" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtcaddress" CssClass="form-control" runat="server" placeholder="Correspondance Address.." TextMode="MultiLine" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                

                            </div>
                            <div class="form-group">
                                <label>Same As Above</label>
                                <asp:CheckBox ID="chkboxsame" AutoPostBack="true" runat="server" OnCheckedChanged="chkboxsame_CheckedChanged" />

                            </div>
                            <div class="form-group">
                                <label>Permanent Address</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtpaddress" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtpaddress" CssClass="form-control" runat="server" placeholder="Permanent Address.." TextMode="MultiLine" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                

                            </div>
                            <div class="form-group">
                                <label>State</label><asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="ddnstate" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnstate" ValidationGroup="c" AutoPostBack="true" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddnstate_SelectedIndexChanged"></asp:DropDownList>
                                

                            </div>
                            <div class="form-group">
                                <label>City</label><asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="ddncity" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddncity" ValidationGroup="c" CssClass="form-control" runat="server"></asp:DropDownList>
                                

                            </div>
                            <div class="form-group">
                                <label>Pincode</label><asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtpin" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtpin" CssClass="form-control" runat="server" placeholder="Pin Code.." MaxLength="7" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label>Student Mobile No.</label>
                                <asp:TextBox ID="txtsno" CssClass="form-control" runat="server" placeholder="Moblile No.." MaxLength="10" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="txtsno_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtsno">
                                </asp:FilteredTextBoxExtender>

                            </div>
                            <div class="form-group">
                                <label>Home Contact No</label>
                                <asp:TextBox ID="txthno" CssClass="form-control" runat="server" placeholder="Home  Contact No.." MaxLength="8" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="txthno_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txthno">
                                </asp:FilteredTextBoxExtender>

                            </div>

                        </div>
                    </div>
                </div>
                
                <div class="col-sm-6" style="float: left;">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Enrollment Details</h4>
                            </div>
                        </div>
                        <div class="panel-body">

                            <div class="form-group">
                                <label>Enrollment No</label>
                                <asp:TextBox ID="txtenrollment" CssClass="form-control" runat="server" placeholder="Enrollment No.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Roll No</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtrollno" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtrollno" CssClass="form-control" runat="server" placeholder="Roll No.." AutoPostBack="true" autocomplete="off" ValidationGroup="c" OnTextChanged="txtrollno_TextChanged"></asp:TextBox>
                                

                            </div>
                            <div class="form-group">
                                <label>Aadhar Card No</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtaadhar" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtaadhar" CssClass="form-control" runat="server" placeholder="Aadhar Card No.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                            </div>


                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Personal Details</h4>
                            </div>
                        </div>

                        <div class="panel-body">

                            <div class="form-group">
                                <label>First Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtfname" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtfname" CssClass="form-control" runat="server" placeholder="First Name.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                


                            </div>
                            <div class="form-group">
                                <label>Middle Name</label>
                                <asp:TextBox ID="txtmname" CssClass="form-control" runat="server" placeholder="Middle Name.." autocomplete="off" ValidationGroup="c"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Last Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtlname" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtlname" CssClass="form-control" runat="server" placeholder="Last Name.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                

                            </div>
                            <div class="form-group">
                                <label>Gender</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddngender" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddngender" ValidationGroup="c" CssClass="form-control" runat="server">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Male</asp:ListItem>
                                    <asp:ListItem Value="2">Female</asp:ListItem>
                                    <asp:ListItem Value="2">TransGender</asp:ListItem>

                                </asp:DropDownList>
                                

                            </div>
                            <div class="form-group">
                                <label>Enter D.O.B.</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtdob" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtdob" CssClass="form-control" runat="server" placeholder="DOB.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:CalendarExtender ID="txtdob_CalendarExtender" ClearTime="true" runat="server" TargetControlID="txtdob" Format="dd/MM/yyyy"></asp:CalendarExtender>
                                

                            </div>

                                <div class="form-group">
                                <label>Blood Group</label><asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="ddnbloodgroup" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnbloodgroup" ValidationGroup="c" CssClass="form-control" runat="server">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">A+</asp:ListItem>
                                    <asp:ListItem Value="2">B+</asp:ListItem>
                                    <asp:ListItem Value="2">A-</asp:ListItem>
                                    <asp:ListItem Value="2">B-</asp:ListItem>
                                    <asp:ListItem Value="2">AB+</asp:ListItem>
                                    <asp:ListItem Value="2">O-</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                        </div>
                    </div>
                </div>
                
                <div class="col-sm-6" style="float:right;">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <div class="panel-title">
                                    <h4>Mother Details</h4>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtmothername" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtmothername" CssClass="form-control" runat="server" placeholder="Mother Name.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                

                            </div>

                            <div class="form-group">
                                <label>Mobile No.</label>
                                <asp:TextBox ID="txtmothercno" CssClass="form-control" runat="server" placeholder="Mobile No.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="txtmothercno_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtmothercno">
                                </asp:FilteredTextBoxExtender>


                            </div>

                            <div class="form-group">
                                <label>Occupation</label>
                                <asp:TextBox ID="txtmotherocc" CssClass="form-control" runat="server" placeholder="Mother Occupation.." MaxLength="10" autocomplete="off" ValidationGroup="c"></asp:TextBox>


                            </div>
                            <div class="form-group">
                                <label>Designation</label>
                                <asp:TextBox ID="txtmotherdesig" CssClass="form-control" runat="server" placeholder="Mother Designation.." MaxLength="8" autocomplete="off" ValidationGroup="c"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Income</label>
                                <asp:TextBox ID="txtmotherincome" CssClass="form-control" runat="server" placeholder="Mother Income.." MaxLength="8" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="txtmotherincome_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtmotherincome">
                                </asp:FilteredTextBoxExtender>

                            </div>
                             <div class="form-group">
                                <label>Photograph</label>
                                <asp:FileUpload ID="studentPhoto" runat="server" />
                            </div>
                            <div class="form-group">



                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Student" ValidationGroup="c" OnClick="BtnAdd_Click" />
                                <asp:Button ID="Btnupdate" CssClass="btn btn-add" runat="server" Text="Update Student" OnClick="Btnupdate_Click" />
                                <asp:Button ID="Btndel" CssClass="btn btn-add" runat="server" Text="Delete Student" OnClick="Btndel_Click" />
                                <asp:Button ID="Btncncl" CssClass="btn btn-add" runat="server" Text="Cancel" OnClick="Btncncl_Click" />
                                <asp:Label ID="lblId" Visible="false" runat="server"></asp:Label>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6" style="float:right;">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <div class="panel-title">
                                    <h4>Father Details</h4>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtfathername" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtfathername" CssClass="form-control" runat="server" placeholder="Father Name.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                
                            </div>

                            <div class="form-group">
                                <label>Mobile No.</label><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtfathercno" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtfathercno" CssClass="form-control" runat="server" placeholder="Mobile No.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="txtfathercno_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtfathercno">
                                </asp:FilteredTextBoxExtender>
                                

                            </div>

                            <div class="form-group">
                                <label>Occupation</label><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtfatherocc" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtfatherocc" CssClass="form-control" runat="server" placeholder="Father Occupation.." MaxLength="15" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                

                            </div>
                            <div class="form-group">
                                <label>Designation</label><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtfatherdesig" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtfatherdesig" CssClass="form-control" runat="server" placeholder="Father Designation.." MaxLength="10" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                
                            </div>
                            <div class="form-group">
                                <label>Income</label><asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtfatherincome" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtfatherincome" CssClass="form-control" runat="server" placeholder="Father Income.." MaxLength="8" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="txtfatherincome_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtfatherincome">
                                </asp:FilteredTextBoxExtender>
                                
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

                                <h4>Personal Detail & Class Allotment Dertails</h4>
                            </div>
                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Print Data" OnClientClick="doPrint()" />

                            </div>

                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView ID="gvdetails" CssClass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC" EmptyDataText="No Record!" BorderStyle="None" DataKeyNames="StudentId" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="25" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvdetails_SelectedIndexChanged">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="S.No." ItemStyle-Width="100">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="StudentFirstName" HeaderText="First Name" />
                                        <asp:BoundField DataField="StudentMiddleName" HeaderText="Middle Name" />
                                        <asp:BoundField DataField="StudentLastName" HeaderText="Last Name" />
                                        <asp:BoundField DataField="ClassName" HeaderText="Class" />
                                        <asp:BoundField DataField="SectionName" HeaderText="Section" />
                                        <asp:BoundField DataField="IsEntraneExaminationPassed" HeaderText="Is Entrance Examination Passed" Visible="false" />
                                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                                        <asp:BoundField DataField="DOB" HeaderText="Student D.O.B" />
                                        <asp:BoundField DataField="StudentEnrollmentNo" HeaderText="Enrollment No" />
                                         <asp:HyperLinkField DataNavigateUrlFields="StudentRollNo" HeaderText="Roll No." DataNavigateUrlFormatString="PrintForm.aspx?RollNo={0}" DataTextField="StudentRollNo" />
                                        <asp:BoundField DataField="StudentAadharNo" HeaderText="Aadhar No" />
                                        <asp:ImageField DataImageUrlField="StudentPhoto" ControlStyle-Height="100" ControlStyle-Width="100" HeaderText="photo"></asp:ImageField>
                                        <asp:BoundField DataField="StudentCorrespondanceAddress" HeaderText="Correspondance Address" />
                                        <asp:BoundField DataField="StudentPermanentAddress" HeaderText="Permanent Address" />
                                        <asp:BoundField DataField="StateId" HeaderText="Id" />
                                        <asp:BoundField DataField="CityId" HeaderText="Id" />
                                        <asp:BoundField DataField="State_Name" HeaderText="State" />
                                        <asp:BoundField DataField="CityName" HeaderText="City" />
                                        <asp:BoundField DataField="Pincode" HeaderText="Pincode" />
                                        <asp:BoundField DataField="HomeContactNo" HeaderText="Home Contact No(0522-)" />
                                        <asp:BoundField DataField="StudentContactNo" HeaderText="Contact No(+91-)" />
                                        <asp:BoundField DataField="StudentFatherName" HeaderText="Father Name" />
                                        <asp:BoundField DataField="StudentFatherContactNo" HeaderText="Father Contact No(+91-)" />
                                        <asp:BoundField DataField="StudentFatherOccupation" HeaderText="Father Occupation" />
                                        <asp:BoundField DataField="StudentFatherDesignation" HeaderText="Father Designation" />
                                        <asp:BoundField DataField="StudentFatherIncome" HeaderText="Father Income" />
                                        <asp:BoundField DataField="StudentMotherName" HeaderText="Mother Name" />
                                        <asp:BoundField DataField="StudentMotherContactNo" HeaderText="Mother Contact No(+91-)" />
                                        <asp:BoundField DataField="StudentMotherOccupation" HeaderText="Mother Occupation" />
                                        <asp:BoundField DataField="StudentMotherDesignation" HeaderText="Mother Designation" />
                                        <asp:BoundField DataField="StudentMotherIncome" HeaderText="Mother Income" />
                                        <asp:BoundField DataField="BloodGroup" HeaderText="Blood Group" />
                                        <asp:BoundField DataField="Createdby" HeaderText="Created By" />
                                        <asp:BoundField DataField="Createdon" HeaderText="Created on" />
                                        <asp:BoundField DataField="Updatedon" HeaderText="Updated on" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>




        </section>

    </div>
</asp:Content>

