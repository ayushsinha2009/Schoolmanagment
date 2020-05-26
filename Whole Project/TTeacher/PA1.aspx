<%@ Page Title="" Language="C#" MasterPageFile="~/TTeacher/AMasterPage.master" AutoEventWireup="true" CodeFile="PA1.aspx.cs" EnableEventValidation="false" Inherits="TTeacher_PA1" %>
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
                <h1>Attendance Reports</h1>
                <small>Attendance Reports..</small>
            </div>
        </section>
        <section class="content">
              <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                       
                       <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Selection Range</h4>
                            </div>
                        </div>

                          <div class="panel-body">
                             <div class="form-group">
                                <label>Class</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddnclass" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnclass" CssClass="form-control" ValidationGroup="c" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label>Section</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddnsection" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsection" CssClass="form-control" ValidationGroup="c" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddnsection_SelectedIndexChanged"></asp:DropDownList>
                              <div class="form-group">
                                <label>Date From</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdate" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                 <asp:CalendarExtender ID="txtdate_CalendarExtender" ClearTime="true" runat="server" TargetControlID="txtdate" Format="dd/MM/yyyy"> </asp:CalendarExtender>
                                <asp:TextBox ID="txtdate"  CssClass="form-control" runat="server" placeholder="Date From.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                            </div>
                             <div class="form-group">
                                <label>Date Till</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txttill" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                 <asp:CalendarExtender ID="txttill_CalendarExtender" ClearTime="true" runat="server" TargetControlID="txttill" Format="dd/MM/yyyy"> </asp:CalendarExtender>
                                <asp:TextBox ID="txttill"  CssClass="form-control" runat="server" placeholder="Date Till.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                            </div>
                                <div class="form-group">
                                    <asp:GridView ID="gvlist" Cssclass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC"  EmptyDataText="No Record!" DataKeyNames="StudentId" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvlist_SelectedIndexChanged">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <Columns>
                                      <asp:TemplateField HeaderText = "S.No." ItemStyle-Width="100">
                                                <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                          </asp:TemplateField>
                            <asp:BoundField DataField="StudentRollNo" HeaderText="Student Roll No" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" />


                        </Columns>
                                </asp:GridView>
                                    </div>
                                
                            </div>
                                                          <div class="form-group">


                              

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

                                <h4>Present Details</h4>
                            </div>

                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView ID="gvdetails" CssClass="table table-bordered table-striped table-hover" runat="server" EmptyDataText="No Record!" AutoGenerateColumns="true">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                  
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                        


        </section>

    </div>
</asp:Content>

