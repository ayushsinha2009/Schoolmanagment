<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="AddTC.aspx.cs" Inherits="AdminLogin_AddTC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScrptMngr1" runat="server"></asp:ScriptManager>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="header-icon">
                <i class="fa fa-book"></i>
            </div>
            <div class="header-title">
                <h1>Transfer Certificates</h1>
                <small>Enter details of TC here..</small>
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>TC Details</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Student Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddnstudent" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnstudent" AutoPostBack="true" CssClass="form-control" ValidationGroup="c" runat="server" OnSelectedIndexChanged="ddnstudent_SelectedIndexChanged"></asp:DropDownList>
                                

                            </div>
                            <div class="form-group">
                                <label>Class</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddnclass" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnclass" CssClass="form-control" ValidationGroup="c" runat="server" ></asp:DropDownList>
                                

                            </div>
                            <div class="form-group">
                                <label>Section</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddnsec" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsec" CssClass="form-control" ValidationGroup="c" runat="server" ></asp:DropDownList>
                            </div>
                      <%--     <div class="form-group">
                                <label>Is TC Generated</label>
                                <asp:DropDownList ID="ddnpresent" CssClass="form-control" ValidationGroup="c" runat="server" >
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="Y">Generated</asp:ListItem>
                                    <asp:ListItem Value="N">Not Generated</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddnpresent" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>

                            </div>--%>
                           <div class="form-group">
                                <label>Description</label>
                                <asp:TextBox ID="txtdesc" TextMode="MultiLine"  CssClass="form-control" runat="server" placeholder="Description.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtdesc" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add TC" ValidationGroup="c" OnClick="BtnAdd_Click" />
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

                                <h4>TC Details</h4>
                            </div>
                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView ID="gvdetails" CssClass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC" EmptyDataText="No Record!" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" PageSize="25" OnPageIndexChanging="gvdetails_PageIndexChanging">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                      <Columns>
                            <asp:BoundField DataField="TCId" HeaderText=" S.No. " Visible="false" />
                            <asp:BoundField DataField="Student Name" HeaderText="Student  Name" />
                            <asp:BoundField DataField="ClassName" HeaderText="Class" />
                            <asp:BoundField DataField="SectionName" HeaderText="Section" />
                            <asp:BoundField DataField="StudentId" HeaderText="student Id" Visible="false" />
                            <asp:BoundField DataField="ClassId" HeaderText="Class Id" Visible="false" />
                            <asp:BoundField DataField="SectionId" HeaderText="Section Id" Visible="false" />
                            <asp:BoundField DataField="IsGeneratedTC" HeaderText="IsGenerated TC" Visible="false" />
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

