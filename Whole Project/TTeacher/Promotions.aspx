<%@ Page Title="" Language="C#" MasterPageFile="~/TTeacher/AMasterPage.master" AutoEventWireup="true" CodeFile="Promotions.aspx.cs" Inherits="TTeacher_Promotions" %>
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
                <h1>Student Promotion</h1>
                <small>Student Promotion Details..</small>
            </div>
        </section>
        <section class="content">
             <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Student Promotion</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Class</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddnclass" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnclass" CssClass="form-control" ValidationGroup="c" runat="server"></asp:DropDownList>
                                

                            </div>
                            <div class="form-group">
                                <label>Section</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddnsection" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsection" CssClass="form-control" ValidationGroup="c" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddnsection_SelectedIndexChanged"></asp:DropDownList>
                                
                            </div>
                              <div class="form-group">
                                <label>Attendance Details</label>
                                <asp:GridView ID="gvdetails" CssClass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC" EmptyDataText="No Record!" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False">
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="Sno.">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("studentid") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("studentid") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Student Name" HeaderText="Name" />
                                <asp:TemplateField HeaderText="Select Data">
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>

                            </div>
                        
                            <div class="form-group">
                                <label>Promoted Class</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddnpclass" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnpclass" CssClass="form-control" ValidationGroup="c" runat="server"></asp:DropDownList>
                                

                            </div>
                               <div class="form-group">
                                <label>Promoted Section</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddnpsection" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnpsection" CssClass="form-control" ValidationGroup="c"  runat="server" ></asp:DropDownList>
                                

                            </div>

                      

                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Student Promotion" ValidationGroup="c" OnClick="BtnAdd_Click" />
                              
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

                                <h4>Student Promotion Details</h4>
                            </div>
                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                 <asp:GridView ID="gvdetails1" Cssclass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC"  EmptyDataText="No Records!" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvdetails1_PageIndexChanging" PageSize="25">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <Columns>
                            <asp:BoundField DataField="PromotionId" HeaderText=" S.No. " />
                            <asp:BoundField DataField="Student Name" HeaderText="Full Name" />
                            <asp:BoundField DataField="ClassName" HeaderText="promted Class Name" />
                            <asp:BoundField DataField="SectionName" HeaderText="promoted Section Name" />
                            <asp:BoundField DataField="studentid" HeaderText="student Id" />
                            <asp:BoundField DataField="promotedClassId" HeaderText="promoted Class Id" />
                            <asp:BoundField DataField="promotedSectionId" HeaderText="promoted Section Id" />
                            <asp:BoundField DataField="Ispromoted" HeaderText="Is Promoted" />
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

