<%@ Page Title="" Language="C#" MasterPageFile="~/AAcountant/AMasterPage.master" AutoEventWireup="true" CodeFile="Expenses.aspx.cs"  EnableEventValidation="false" Inherits="AAcountant_Expenses" %>

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
                <h1>Add Expenses</h1>
                <small>Add Expenses Details..</small>
            </div>
        </section>
        <section class="content">
            <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Expenses</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Item Name</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtitemname" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtitemname"  CssClass="form-control" runat="server" placeholder="Item Name.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Expenses In Rs</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtexpenses" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="Regex2" runat="server" ValidationExpression="((\d+)+(\.\d+))$" ErrorMessage="Please enter valid decimal number with any decimal places." ControlToValidate="txtexpenses" />
                           <asp:TextBox ID="txtexpenses"  CssClass="form-control" runat="server" placeholder="Enter Expenses In Rs.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                            
                            </div>
                              
                             <div class="form-group">
                                <label>Description</label>
                                <asp:TextBox ID="txtdesc" TextMode="MultiLine"  CssClass="form-control" runat="server" placeholder="Enter Description.." ValidationGroup="c"></asp:TextBox>
                            </div>
                   
                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Expenses" ValidationGroup="c" OnClick="BtnAdd_Click" />
                              
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

                                <h4>Expenses Details</h4>
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
                    <asp:BoundField DataField="ExpenseId" HeaderText=" S.No. " />
                    <asp:BoundField DataField="ItemName" HeaderText="Item Name" /> 
                    <asp:BoundField DataField="ExpnseInRs" HeaderText="Expense In Rs" /> 
                    <asp:BoundField DataField="Expensedesc" HeaderText="Date" /> 
               
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





