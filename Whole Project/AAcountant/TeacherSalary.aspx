<%@ Page Title="" Language="C#" MasterPageFile="~/AAcountant/AMasterPage.master" AutoEventWireup="true" CodeFile="TeacherSalary.aspx.cs" EnableEventValidation="false" Inherits="AAcountant_TeacherSalary" %>
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
                <h1>Teacher Salary</h1>
                <small>Teacher Salary Details..</small>
            </div>
        </section>
        <section class="content">
            <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Teacher Salary</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Teacher Name</label>
                                <asp:DropDownList ID="ddnteacher" ValidationGroup="c" CssClass="form-control" AutoPostBack="true"  runat="server" OnSelectedIndexChanged="ddnstaff_SelectedIndexChanged"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddnteacher" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group">
                                <label>Salary Details</label>
                            <asp:GridView ID="gvsalary" runat="server"></asp:GridView>

                            </div>
                              <div class="form-group">
                                <label>Attendance Details</label>
                                <asp:GridView ID="gvattendance" runat="server"></asp:GridView>

                            </div>
                             <div class="form-group">
                                <label>Date</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdate" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtdate"  CssClass="form-control" runat="server" placeholder="Date.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                                <asp:CalendarExtender ID="txtdate_CalendarExtender" ClearTime="true" runat="server" TargetControlID="txtdate" Format="dd/MM/yyyy"> </asp:CalendarExtender>
                                

                            </div>
                            <div class="form-group">
                                <label>Month</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddnmonth" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnmonth" ValidationGroup="c"  CssClass="form-control" runat="server">
                                                        <asp:ListItem Value="0">Select</asp:ListItem>
                                                     <asp:ListItem Value="1">January</asp:ListItem>
                                                    <asp:ListItem Value="2">February</asp:ListItem>
                                                     <asp:ListItem Value="3">March</asp:ListItem>
                                                    <asp:ListItem Value="4">April</asp:ListItem>
                                                    <asp:ListItem Value="5">May</asp:ListItem>
                                                    <asp:ListItem Value="6">Hune</asp:ListItem>
                                                     <asp:ListItem Value="7">July</asp:ListItem>
                                                    <asp:ListItem Value="8">August</asp:ListItem>
                                                    <asp:ListItem Value="9">September</asp:ListItem>
                                                    <asp:ListItem Value="10">October</asp:ListItem>
                                                     <asp:ListItem Value="11">November</asp:ListItem>
                                                    <asp:ListItem Value="12">December</asp:ListItem>
                                                     </asp:DropDownList>
                                

                            </div>
                           
                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Generate Salary" ValidationGroup="c" OnClick="BtnAdd_Click" />
                              
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

                                <h4>Teacher Salary Details</h4>
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
                    <asp:BoundField DataField="SalaryId" HeaderText=" S.No. " />
                    <asp:BoundField DataField="teacherFirstName" HeaderText="Name" /> 
                    <asp:BoundField DataField="teacherid" HeaderText="teacher Id" /> 
                    <asp:BoundField DataField="SalaryDate" HeaderText="Date" /> 
                    <asp:BoundField DataField="StaffMonth" HeaderText="Month" /> 
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
