<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="ChangeAdminPassword.aspx.cs" Inherits="AdminLogin_ChangeAdminPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                <h1>Change Admin Password</h1>
                <small>Enter details of password here..</small>
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Change Admin Password</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>New Password</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpwd" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtpwd" TextMode="Password"  CssClass="form-control" runat="server" placeholder="Password.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                            
                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcnfrmpwd" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                               <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Mismatch" ControlToCompare="txtpwd" ControlToValidate="txtcnfrmpwd" ValidationGroup="c"></asp:CompareValidator>
                               <asp:TextBox ID="txtcnfrmpwd" TextMode="Password"  CssClass="form-control" runat="server" placeholder="Confirm Password.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                               
                                                </div>
                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Change Password" ValidationGroup="c" OnClick="BtnAdd_Click" />
                              
                            </div>
                        </div>
                    </div>
                </div>

            </div>
    


        </section>

    </div>
</asp:Content>

