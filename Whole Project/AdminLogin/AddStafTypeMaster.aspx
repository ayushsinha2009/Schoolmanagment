<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="AddStafTypeMaster.aspx.cs" EnableEventValidation="false" Inherits="AdminLogin_AddStafTypeMaster" %>

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
                <h1>Staff Type Master</h1>
                <small>Enter details of Staff Type names here..</small>
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Staff Type Details</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Staff Type</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtype" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtype"  CssClass="form-control" runat="server" placeholder="Staff Type.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                            </div>
                          
                            <div class="form-group">
                             

                                  <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Staff Type" ValidationGroup="c" OnClick="BtnAdd_Click" />
                                    <asp:Button ID="Btnupdate" CssClass="btn btn-primary" runat="server" Text="Update Staff Type" OnClick="Btnupdate_Click"  />
                                    <asp:Button ID="Btndel" CssClass="btn btn-add" runat="server" Text="Delete Staff Type" OnClick="Btndel_Click"  />
                                    <asp:Button ID="Btncncl" CssClass="btn btn-add" runat="server" Text="Cancel" OnClick="Btncncl_Click"  />
                                     <asp:Label ID="lblId" Visible="false" runat="server" ></asp:Label> 
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
                                <h4>Staff Type Details</h4>
                            </div>
                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                 <asp:GridView ID="gvdetails" CssClass="table table-bordered table-striped table-hover" runat="server" EmptyDataText="No Record!" AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="SMId" OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="25" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvdetails_SelectedIndexChanged">
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                              <Columns>

                                                            <asp:TemplateField HeaderText = "S.No." ItemStyle-Width="100">
                                                <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                          </asp:TemplateField>
                    <asp:BoundField DataField="SMType" HeaderText="Type" />    
                    <asp:BoundField DataField="Createdby" HeaderText="Createdby" />   
                    <asp:BoundField DataField="Createdon" HeaderText="Created on" />
                     <asp:BoundField DataField="Updatedon" HeaderText="Updated on" />
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

