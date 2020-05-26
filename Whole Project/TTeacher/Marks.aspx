<%@ Page Title="" Language="C#" MasterPageFile="~/TTeacher/AMasterPage.master" AutoEventWireup="true" CodeFile="Marks.aspx.cs" EnableEventValidation="false" Inherits="TTeacher_Marks" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="header-icon">
                <i class="fa fa-book"></i>
            </div>
            <div class="header-title">
                <h1>Student Marks</h1>
                <small>Student Marks Details..</small>
            </div>
        </section>
        <section class="content">
             <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Student Marks</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddnstudent" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnstudent" AutoPostBack="true" CssClass="form-control" ValidationGroup="c" runat="server" OnSelectedIndexChanged="ddnstudent_SelectedIndexChanged"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label>Class</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddnclass" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnclass" CssClass="form-control" ValidationGroup="c" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label>Section</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddnsection" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsection" CssClass="form-control" ValidationGroup="c" runat="server"></asp:DropDownList>
                            </div>
                            
                                  <div class="form-group">
                                <label>Semester Type</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddnsemester" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsemester" ValidationGroup="c" CssClass="form-control" runat="server">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem Value="1">Quarterly</asp:ListItem>
                    <asp:ListItem Value="2">Half Yearly</asp:ListItem>
                    <asp:ListItem Value="3">Final</asp:ListItem>
                </asp:DropDownList>

                                

                            </div>

                            <div class="form-group">
                                <label>Reading</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtreading" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtreading"   CssClass="form-control" runat="server" placeholder="Reading Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txtreading_FilteredTextBoxExtender" 
                         runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtreading">
                         </asp:FilteredTextBoxExtender>
               
                            </div>

                                    <div class="form-group">
                                <label>Writing</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtreading" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtwriting"   CssClass="form-control" runat="server" placeholder="Writing Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txtwriting_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtreading">
                                                            </asp:FilteredTextBoxExtender>
              
                            </div>
                                    <div class="form-group">
                                <label>English</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtenglish" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtenglish"   CssClass="form-control" runat="server" placeholder="English Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txtenglish_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtenglish">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                                    <div class="form-group">
                                <label>Hindi</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txthindi" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txthindi"   CssClass="form-control" runat="server" placeholder="Hindi Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txthindi_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txthindi">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                                    <div class="form-group">
                                <label>Maths</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtmaths" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtmaths"   CssClass="form-control" runat="server" placeholder="Maths Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txtmaths_FilteredTextBoxExtender3" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtmaths">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                                    <div class="form-group">
                                <label>Science</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtscience" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtscience"   CssClass="form-control" runat="server" placeholder="Science Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txtscience_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtscience">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                                    <div class="form-group">
                                <label>Computers</label><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtcomputers" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtcomputers"   CssClass="form-control" runat="server" placeholder="Computer Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txtcomputers_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtcomputers">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                                    <div class="form-group">
                                <label>SocialStudies</label><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtss" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtss"   CssClass="form-control" runat="server" placeholder="Social Studies Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txtss_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtss">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                                    <div class="form-group">
                                <label>Health</label><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddnhealth" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                               <asp:DropDownList ID="ddnhealth" ValidationGroup="c" CssClass="form-control" runat="server">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem Value="99">A+</asp:ListItem>
                    <asp:ListItem Value="90">A</asp:ListItem>
                    <asp:ListItem Value="55">B+</asp:ListItem>
                    <asp:ListItem Value="70">B</asp:ListItem>
                    <asp:ListItem Value="55">C</asp:ListItem>
                    <asp:ListItem Value="35">D</asp:ListItem>
                </asp:DropDownList>
               
                            </div>
                                    <div class="form-group">
                                <label>Physical Education</label><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtedu" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtedu"   CssClass="form-control" runat="server" placeholder="Physical Education Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txtedu_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtedu">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                             <div class="form-group">
                                <label>Comments / Suggestions.</label><asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtcomment" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtcomment"   CssClass="form-control" runat="server" placeholder="Comments/Suggestions.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               
                            </div>
                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Marks" ValidationGroup="c" OnClick="BtnAdd_Click" />
                              
                                <asp:Label ID="lblId" Visible="false" runat="server"></asp:Label>
                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
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

                                <h4>Student Marks Details</h4>
                            </div>
                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                 <asp:GridView ID="gvdetails" Cssclass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC"  EmptyDataText="No Record!" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="25">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <Columns>
                            <asp:BoundField DataField="MarksId" HeaderText=" S.No. " />
                            <asp:BoundField DataField="StudentId" HeaderText="Id" />
                            <asp:BoundField DataField="Student Name" HeaderText="Name" />
                            <asp:BoundField DataField="ClassName" HeaderText="Class Name" />
                            <asp:BoundField DataField="SectionName" HeaderText="Section Name" />
                            <asp:BoundField DataField="SemesterType" HeaderText="Semester Type" />
                            <asp:BoundField DataField="Reading" HeaderText="Reading" />
                            <asp:BoundField DataField="Writing" HeaderText="Writing" />
                            <asp:BoundField DataField="English" HeaderText="English" />
                            <asp:BoundField DataField="Hindi" HeaderText="Hindi" />
                            <asp:BoundField DataField="Science" HeaderText="Science" />
                            <asp:BoundField DataField="Computers" HeaderText="Computers" />
                            <asp:BoundField DataField="SocialStudies" HeaderText="Social Studies" />
                            <asp:BoundField DataField="Health" HeaderText="Health" />
                            <asp:BoundField DataField="PhysicalEducation" HeaderText="Physical Education" />
                            <asp:BoundField DataField="Comment" HeaderText="Comment" />
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

