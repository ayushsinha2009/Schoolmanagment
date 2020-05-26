<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="AddStaffAttendance.aspx.cs" EnableEventValidation="false" Inherits="AdminLogin_AddStaffAttendance" %>
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
                <h1>Staff Attendance</h1>
                <small>Enter Staff Attendance..</small>
                <br />
                
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Staff Attendance Details</h4>
                                <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
                            </div>
                        </div>
                        
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Staff Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddnstaff" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnstaff" ValidationGroup="c" CssClass="form-control" runat="server"></asp:DropDownList>
                                                
                   
                                

                            </div>
                           
                           
                            <div class="form-group">
                                <label>Date</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdate"  ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                               <asp:TextBox ID="txtdate"  CssClass="form-control" runat="server" placeholder="Enter Date.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                               <asp:CalendarExtender ID="txtdate_CalendarExtender" ClearTime="true" runat="server" TargetControlID="txtdate" Format="dd/MM/yyyy"> </asp:CalendarExtender>
                                

                            </div>
                            
                       
                           
                          
                            <div class="form-group">
                                <label>Time In</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txttimein" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txttimein" CssClass="form-control" runat="server" placeholder="In HH:MM:SS.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                
                            </div>
                            <div class="form-group">
                                <label>Time Out</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txttimeout" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txttimeout"  CssClass="form-control" AutoPostBack="true" runat="server" placeholder="In HH:MM:SS" autocomplete="off" ValidationGroup="c" OnTextChanged="txttimeout_TextChanged"></asp:TextBox>
                                
                            </div>

                              <div class="form-group">
                                <label>Total Working Hours</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txttwhrs" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txttwhrs"  CssClass="form-control" AutoPostBack="false" runat="server" placeholder="In HH:MM:SS" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                
                            </div>
                             <div class="form-group">
                                <label>Is Staff Present or Not</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddnprsnt" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnprsnt" ValidationGroup="c"  CssClass="form-control" runat="server">
                                                        <asp:ListItem Value="0">Select</asp:ListItem>
                                                     <asp:ListItem Value="1">Present</asp:ListItem>
                                                    <asp:ListItem Value="2">Absent</asp:ListItem>
                                                     
                                                     </asp:DropDownList>
                               
                            </div>
                           
                             

                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Staff Attendance" ValidationGroup="c" OnClick="BtnAdd_Click" />
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

                                <h4>Attendance Details</h4>
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
                    <asp:BoundField DataField="StaffAttendanceId" HeaderText=" S.No. " />
                    <asp:BoundField DataField="FullName" HeaderText="Staff Full Name" /> 
                    <asp:BoundField DataField="Staffid" HeaderText="Staff Id" Visible="false" /> 
                    <asp:BoundField DataField="Date" HeaderText="Date" /> 
                    <asp:BoundField DataField="Month" HeaderText="Month" /> 
                    <asp:BoundField DataField="Day" HeaderText="Day" />
                    <asp:BoundField DataField="Timein" HeaderText="Time In" /> 
                    <asp:BoundField DataField="Tmeout" HeaderText="Time Out" /> 
                    <asp:BoundField DataField="TotalWorkingHours" HeaderText="Total Working Hours" />
                    <asp:BoundField DataField="StaffPresent_Absent" HeaderText="Staff Present Absent" />
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


