<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" EnableEventValidation="false" Inherits="Admin_AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>SMS Login Panel</title>

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/dist/img/ico/favicon.png" type="image/x-icon">
        <!-- Bootstrap -->
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap rtl -->
        <!--<link href="assets/bootstrap-rtl/bootstrap-rtl.min.css" rel="stylesheet" type="text/css"/>-->
        <!-- Pe-icon-7-stroke -->
        <link href="assets/pe-icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css"/>
        <!-- style css -->
        <link href="assets/dist/css/stylecrm.css" rel="stylesheet" type="text/css"/>
        <!-- Theme style rtl -->
        <!--<link href="assets/dist/css/stylecrm-rtl.css" rel="stylesheet" type="text/css"/>-->

    </head>
<body>
    <form id="form1" runat="server">
     <body>
        <!-- Content Wrapper -->
        <div class="login-wrapper">
         <%--   <div class="back-link">
                <a href="../Default.aspx">Back</a>
                <br />
                <a href="AdminLogin.aspx" class="btn btn-add">Welcome To SMS</a>
            </div>--%>
            <div class="container-center">
            <div class="login-area">
                <div class="panel panel-bd panel-custom">
                    <div class="panel-heading">
                        <div class="view-header">
                            <div class="header-icon">
                                <i class="pe-7s-unlock"></i>
                            </div>
                            <div class="header-title">
                                <h3>Login !!</h3>
                                <small><strong>Please enter your  credentials to login.</strong></small>
                                <br />
                                <small><strong>For Demo Purpose Contact Product Vendor.</strong></small>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <form action="http://crm.thememinister.com/crmAdmin/index.html" id="loginForm" novalidate>
                            <div class="form-group">
                                <label class="control-label" for="username">Username *</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="*" ValidationGroup="l" ></asp:RequiredFieldValidator>
                                <%--<input type="text" placeholder="example@gmail.com" title="Please enter you username" required="" value="" name="username" id="username" class="form-control">
                                <span class="help-block small">Your unique username to app</span>--%>
                                    <asp:TextBox ID="txtusername" CssClass="form-control" placeholder="Username" autocomplete="off" ValidationGroup="l" runat="server"></asp:TextBox>
                                    
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password">Password*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd" ErrorMessage="*" ValidationGroup="l" ></asp:RequiredFieldValidator>
                                <%--<input type="password" title="Please enter your password" placeholder="******" required="" value="" name="password" id="password" class="form-control">
                                <span class="help-block small">Your strong password</span>--%>
                                <asp:TextBox ID="txtpwd" CssClass="form-control" placeholder="Password" autocomplete="off" ValidationGroup="l" TextMode="Password" runat="server"></asp:TextBox>
                                    
                            </div>
                            <div>
                                <a href="FP.aspx">Forgot Password </a>
                                <br />
                                <a href="http://www.iphygenia.com" target="_blank">Need Help ! </a>

                            </div>
                            <div>
                                <%--<button class="btn btn-add">Login</button>--%>
                               <asp:Button ID="Btnlogin" CssClass="btn btn-add" runat="server" ValidationGroup="l" Text="Login" OnClick="Btnlogin_Click" />
                                <asp:Label ID="lblmsg" runat="server" ></asp:Label>
                                <%--<a class="btn btn-warning" href="register.html">Register</a>--%>
                                <center><a href="http://www.iphygenia.com" target="_blank">Designed & Developed By:-<br /><h4>Iphygenia Solution Pvt.Ltd.</h4></a></center
                            </div>
                            <div>
                                <a href="https://web.whatsapp.com/"><img alt="" src="../images/whatsApp.png" /></a></div>
                        </form>
                        </div>
                        </div>
                </div>
            </div>
        </div>
        <!-- /.content-wrapper -->
        <!-- jQuery -->
        <script src="assets/plugins/jQuery/jquery-1.12.4.min.js" type="text/javascript"></script>
        <!-- bootstrap js -->
        <script src="assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
    </form>
</body>
</html>
