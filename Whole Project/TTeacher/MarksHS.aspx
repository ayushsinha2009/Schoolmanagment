<%@ Page Title="" Language="C#" MasterPageFile="~/TTeacher/AMasterPage.master" AutoEventWireup="true" CodeFile="MarksHS.aspx.cs" Inherits="TTeacher_MarksHS" %>
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
                <h1>Student Marks(High Standard)</h1>
                <small>Student Marks(High Standard) Details..</small>
            </div>
        </section>
        <section class="content">
             <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Student Marks Higher Standard</h4>
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
                                <label>English Ist</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txte1" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txte1"   CssClass="form-control" runat="server" placeholder="English Ist Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txte1_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txte1">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>

                                    <div class="form-group">
                                <label>English IInd</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txte2" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txte2"   CssClass="form-control" runat="server" placeholder="English IInd Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txte2_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txte2">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                                    <div class="form-group">
                                <label>Hindi Ist</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txth1" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txth1"   CssClass="form-control" runat="server" placeholder="Hindi Ist Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txth1_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txth1">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                                    <div class="form-group">
                                <label>Hindi IInd</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txth2" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txth2"   CssClass="form-control" runat="server" placeholder="Hindi IInd Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txth2_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txth2">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                                    <div class="form-group">
                                <label>Maths Ist</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtm1" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtm1"   CssClass="form-control" runat="server" placeholder="Maths Ist Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txtm1_FilteredTextBoxExtender3" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtm1">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                                    <div class="form-group">
                                <label>Maths IInd</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtm2" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtm2"   CssClass="form-control" runat="server" placeholder="Maths IInd Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txtm2_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtm2">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                                    <div class="form-group">
                                <label>Physics</label><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtphysics" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtphysics"   CssClass="form-control" runat="server" placeholder="Physics Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txtphysics_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtphysics">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                                    <div class="form-group">
                                <label>Chemistry</label><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtchem" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtchem"   CssClass="form-control" runat="server" placeholder="Chemistry Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txtchem_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtchem">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                                   
                                    <div class="form-group">
                                <label>Biology</label><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtbio" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtbio"   CssClass="form-control" runat="server" placeholder="Biology Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txtbio_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtbio">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                             <div class="form-group">
                                <label>Computers</label><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtcomputers" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtcomputers"   CssClass="form-control" runat="server" placeholder="Computer Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txtcomputers_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtcomputers">
                                                            </asp:FilteredTextBoxExtender>
               
                            </div>
                                    <div class="form-group">
                                <label>SocialStudies</label><asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtss" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtss"   CssClass="form-control" runat="server" placeholder="Social Studies Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:FilteredTextBoxExtender ID="txtss_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtss">
                                                            </asp:FilteredTextBoxExtender>
               
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
                            <asp:BoundField DataField="Student Name" HeaderText="Name" />
                            <asp:BoundField DataField="ClassName" HeaderText="Class Name" />
                            <asp:BoundField DataField="SectionName" HeaderText="Section Name" />
                            <asp:BoundField DataField="SemesterType" HeaderText="Semester Type" />
                            <asp:BoundField DataField="English_Ist" HeaderText="English Ist" />
                            <asp:BoundField DataField="English_IInd" HeaderText="English IInd" />
                            <asp:BoundField DataField="Hindi_Ist" HeaderText="Hindi Ist" />
                            <asp:BoundField DataField="Hindi_IInd" HeaderText="Hindi IInd" />
                            <asp:BoundField DataField="Math_Ist" HeaderText="Math Ist" />
                            <asp:BoundField DataField="Math_IInd" HeaderText="Math IInd" />
                            <asp:BoundField DataField="Physics" HeaderText="PHYSICS." />
                            <asp:BoundField DataField="Chemistry" HeaderText="CHEMISTRY" />
                            <asp:BoundField DataField="Bio" HeaderText="BIOLOGY" />
                            <asp:BoundField DataField="Computers" HeaderText="Computers" />
                            <asp:BoundField DataField="SocialStudies" HeaderText="Social Studies" />
                             <asp:BoundField DataField="Createdby" HeaderText="Created by" />
                            <asp:BoundField DataField="Createdon" HeaderText="Created On" />
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

