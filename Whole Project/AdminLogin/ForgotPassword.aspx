<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="AdminLogin_ForgotPassword" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="header-icon">
                <i class="fa fa-book"></i>
            </div>
            <div class="header-title">
                <h1>Forgot Password</h1>
                <small>Enter Mobile No. here..</small>
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Forgot Password</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Enter Mobile No.</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtno" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtno"  CssClass="form-control" runat="server" placeholder="Mobile No.." MaxLength="10" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                 <asp:FilteredTextBoxExtender ID="txtno_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtno">
                                </asp:FilteredTextBoxExtender>
                            </div>
                          
                            <div class="form-group">
                             

                                  <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Forgot Password" ValidationGroup="c" OnClick="BtnAdd_Click" />

                                     <asp:Label ID="lblId" Visible="false" runat="server" ></asp:Label> 
                                 <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>

            </div>



        </section>

    </div>
</asp:Content>

