<%@ Page Title="" Language="C#" MasterPageFile="~/AAcountant/AMasterPage.master" AutoEventWireup="true" CodeFile="StudentFee.aspx.cs" EnableEventValidation="false" Inherits="AAcountant_StudentFee" %>
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
                <h1>Student Fee</h1>
                <small>Student Fee Details..</small>
            </div>
        </section>
        <section class="content">
            <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Student Fee</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Date</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdate" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtdate"  CssClass="form-control" runat="server" placeholder="Date.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender1" ClearTime="true" runat="server" TargetControlID="txtdate" Format="dd/MM/yyyy"> </asp:CalendarExtender>
                            </div>
                                <div class="form-group">
                                <label>Search Student</label>
                                <asp:TextBox ID="txtstudent"  CssClass="form-control" runat="server" placeholder="Search Student.." AutoPostBack="true" autocomplete="off"  OnTextChanged="txtstudent_TextChanged"></asp:TextBox>
                                
                            </div>
                              <div class="form-group">
                                <label>Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddnstudent" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                 <asp:DropDownList ID="ddnstudent" ValidationGroup="c" CssClass="form-control" AutoPostBack="true"  runat="server" OnSelectedIndexChanged="ddnstudent_SelectedIndexChanged"></asp:DropDownList>               
                            </div>
                             <div class="form-group">
                                <label>Class</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddnclass" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnclass" CssClass="form-control" ValidationGroup="c" runat="server">
                                            </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label>Section</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddnsection" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsection" CssClass="form-control" ValidationGroup="c" runat="server">
                                            </asp:DropDownList>
                            </div>
                              <div class="form-group">
                                <label>Transportation</label>
                                  <asp:DropDownList ID="ddnvehicle" CssClass="form-control" ValidationGroup="c" runat="server">
                                            </asp:DropDownList>
                                  </div>
                               <div class="form-group">
                                <label>Tution Fee</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txttutionfee" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                   <asp:TextBox ID="txttutionfee"  CssClass="form-control" runat="server" placeholder="Tution Fee.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                                <asp:FilteredTextBoxExtender ID="txttutionfee_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txttutionfee">
                                                            </asp:FilteredTextBoxExtender>
                                                    
                                  </div>
                                <div class="form-group">
                                <label>Library Fee</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtlibraryfee" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtlibraryfee"  CssClass="form-control" runat="server" placeholder="Library Fee.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                                <asp:FilteredTextBoxExtender ID="txtlibraryfee_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtlibraryfee">
                                                            </asp:FilteredTextBoxExtender>
                                                    
                                  </div>
                               <div class="form-group">
                                <label>Transportation Fee</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txttransportationfee" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                   <asp:TextBox ID="txttransportationfee"  CssClass="form-control" runat="server" placeholder="Transportation Fee.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                                <asp:FilteredTextBoxExtender ID="txttransportationfee_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txttransportationfee">
                                                            </asp:FilteredTextBoxExtender>
                                                    
                                  </div>
                               <div class="form-group">
                                <label>Other Fee</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtother" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                   <asp:TextBox ID="txtother"  CssClass="form-control" runat="server" placeholder="Other Fee.." AutoPostBack="true" autocomplete="off" ValidationGroup="c" OnTextChanged="txtother_TextChanged"></asp:TextBox>
                                                <asp:FilteredTextBoxExtender ID="txtother_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtother">
                                                            </asp:FilteredTextBoxExtender>
                                  </div>
                                         <div class="form-group">
                                <label>Fee Category</label>
                                <asp:DropDownList ID="ddncat" ValidationGroup="c"  CssClass="form-control" runat="server">
                     <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem Value="1">Category1</asp:ListItem>
                    <asp:ListItem Value="2">Category2</asp:ListItem>
                    
                                                     </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddncat" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>

                            </div>
                                  <div class="form-group">
                                <label>Desc.</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdesc" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtdesc"  CssClass="form-control" runat="server" placeholder="Desc.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                            </div>

                              <div class="form-group">
                                <label>Total Fee</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txttotal" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                  <asp:TextBox ID="txttotal"  CssClass="form-control" runat="server" placeholder="Total Fee.." AutoPostBack="true" autocomplete="off" ValidationGroup="c" OnTextChanged="txtother_TextChanged"></asp:TextBox>
                                                <asp:FilteredTextBoxExtender ID="txttotal_FilteredTextBoxExtender" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txttotal">
                                                            </asp:FilteredTextBoxExtender>
                                                    
                   
                                  </div>
                             


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Generate Fee" ValidationGroup="c" OnClick="BtnAdd_Click" />
                              
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
                            <div class="panel-title" style="margin-left: 280px">

                                <h4>Fee Details</h4>
                            </div>
                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive" style="margin-left: 280px">
                                 <asp:GridView ID="gvdetails" Cssclass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC"  EmptyDataText="No Record!" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="25">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                         <Columns>
                    <asp:BoundField DataField="FeeId" HeaderText=" S.No." />
                    <asp:BoundField DataField="StudentFirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="ClassName" HeaderText="Class Name" /> 
                    <asp:BoundField DataField="SectionName" HeaderText="Section Name" />
                     <asp:BoundField DataField="VehicleType" HeaderText="Vehicle Type" />
                    <asp:BoundField DataField="Date" HeaderText="Date" /> 
                    <asp:BoundField DataField="Month" HeaderText="Month" />
                   
                                                  
                    <asp:BoundField DataField="TutionFee" HeaderText="Tution Fee" /> 
                    <asp:BoundField DataField="LibraryFee" HeaderText="Library Fee" />
                    <asp:BoundField DataField="TrnsportationFee" HeaderText="Transportaion Fee" />
                    <asp:BoundField DataField="Others" HeaderText="Others" /> 
                    <asp:BoundField DataField="TotalFee" HeaderText="Total Fee" />
                    
                    <asp:BoundField DataField="Createdby" HeaderText="Created By" />
                    
                    <asp:BoundField DataField="Createdon" HeaderText="Created on" />
                   
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

