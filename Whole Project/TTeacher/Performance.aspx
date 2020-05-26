<%@ Page Title="" Language="C#" MasterPageFile="~/TTeacher/AMasterPage.master" AutoEventWireup="true" CodeFile="Performance.aspx.cs" EnableEventValidation="false" Inherits="TTeacher_Performance" %>

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
                <h1>Student Performance</h1>
                <small>Student Performance Details..</small>
            </div>
        </section>
        <section class="content">
             <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Student Performance</h4>
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
                                <label>Level</label>
                                <asp:DropDownList ID="ddnlevel" ValidationGroup="c"  CssClass="form-control" runat="server">
                                                                        <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem Value="1">Excellent</asp:ListItem>
                    <asp:ListItem Value="2">Hard Working</asp:ListItem>
                    <asp:ListItem Value="3">Satisfactory</asp:ListItem>
                    <asp:ListItem Value="4">UnSatisfactory</asp:ListItem>
                    <asp:ListItem Value="5">Poor</asp:ListItem>
                                                     </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddnlevel" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>

                            </div>

                            <div class="form-group">
                                <label>Description</label>
                                <asp:TextBox ID="txtdesc" TextMode="MultiLine"  CssClass="form-control" runat="server" placeholder="Performance Description.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtdesc" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Performance" ValidationGroup="c" OnClick="BtnAdd_Click" />
                              
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

                                <h4>Performance Details</h4>
                            </div>
                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                 <asp:GridView ID="gvdetails" Cssclass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC"  EmptyDataText="No Record!" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvdetails1_PageIndexChanging" PageSize="25">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <Columns>
                            <asp:BoundField DataField="PerformanceId" HeaderText=" S.No. " />
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="ClassName" HeaderText="Class Name" />
                            <asp:BoundField DataField="SectionName" HeaderText="Section Name" />
                            <asp:BoundField DataField="StudentId" HeaderText="student Id" Visible="false" />
                            <asp:BoundField DataField="ClassId" HeaderText="Class Id" Visible="false" />
                            <asp:BoundField DataField="SectionId" HeaderText="Section Id" Visible="false" />
                            <asp:BoundField DataField="PerformanceLevel" HeaderText="Performance Level" />
                            <asp:BoundField DataField="PerfeormanceDscription" HeaderText="Performance Description" />
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



