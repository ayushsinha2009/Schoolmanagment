<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="AddTeacherPerformance.aspx.cs" EnableEventValidation="false" Inherits="AdminLogin_AddTeacherPerformance" %>


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
                <h1>Teacher Performance</h1>
                <small>Enter Teacher Performance..</small>
                <br />
                
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Teacher Performance Details</h4>
                                <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
                            </div>
                        </div>
                        
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Teacher Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddnteacher" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnteacher" ValidationGroup="c" CssClass="form-control" runat="server"></asp:DropDownList>
                                                
                   
                                

                            </div>
                           
                           
                            <div class="form-group">
                                <label>Date</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdate"  ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                               <asp:TextBox ID="txtdate"  CssClass="form-control" runat="server" placeholder="Date.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                               <asp:CalendarExtender ID="txtdate_CalendarExtender" ClearTime="true" runat="server" TargetControlID="txtdate" Format="dd/MM/yyyy"> </asp:CalendarExtender>
                                

                            </div>
                            
                      
                           
                             <div class="form-group">
                                <label>Level</label><asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="ddnlevel"  InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                              <asp:DropDownList ID="ddnlevel" ValidationGroup="c"  CssClass="form-control" runat="server">
                                                             <asp:ListItem Value="0">Select</asp:ListItem>
                                                     <asp:ListItem Value="1">Excellent</asp:ListItem>
                                                    <asp:ListItem Value="2">Satisfactory</asp:ListItem>
                                                     <asp:ListItem Value="3">Top</asp:ListItem>
                                                    <asp:ListItem Value="4">MidleLevel</asp:ListItem>
                                                    <asp:ListItem Value="5">Poor</asp:ListItem>
                                                    <asp:ListItem Value="6">UnSatisfactory</asp:ListItem>
                                                     </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label>Performance Description</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdesc" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtdesc" CssClass="form-control" TextMode="MultiLine" runat="server" placeholder="Description.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                
                            </div>
                            
                           
                             

                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Teacher Performance" ValidationGroup="c" OnClick="BtnAdd_Click" />
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

                                <h4>Teacher Performance Details</h4>
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
                    <asp:BoundField DataField="PerformanceId" HeaderText=" S.No. " />
                    <asp:BoundField DataField="FullName" HeaderText="teacher Full Name" /> 
                    <asp:BoundField DataField="teacherid" HeaderText="teacher Id" /> 
                    <asp:BoundField DataField="Date" HeaderText="Date" /> 
                    <asp:BoundField DataField="Month" HeaderText="Month" /> 
                    <asp:BoundField DataField="Level" HeaderText="Level" />
                    <asp:BoundField DataField="PerformanceDescription" HeaderText="Performance" />
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



