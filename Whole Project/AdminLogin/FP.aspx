<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FP.aspx.cs" Inherits="AdminLogin_FP" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>For Got Password</title>
     
<meta charset="utf-8">
   <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
        <!-- Bootstrap -->
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap rtl -->
        <!--<link href="assets/bootstrap-rtl/bootstrap-rtl.min.css" rel="stylesheet" type="text/css"/>-->
        <!-- Pe-icon-7-stroke -->
        <link href="assets/pe-icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css"/>
        <!-- style css -->
        <link href="assets/dist/css/stylecrm.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/grid_12.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/slider.css">
<link href='http://fonts.googleapis.com/css?family=Cabin+Sketch:400,700' rel='stylesheet' type='text/css'>
<script src="js/jquery-1.7.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script>
    $(document)
        .ready(function () {
            $('.slider')
                ._TMS({
                    show: 0,
                    pauseOnHover: true,
                    prevBu: '.prev',
                    nextBu: '.next',
                    playBu: false,
                    duration: 800,
                    preset: 'fade',
                    pagination: true,
                    pagNums: false,
                    slideshow: 7000,
                    numStatus: false,
                    banners: false,
                    waitBannerAnimation: false,
                    progressBar: false
                })
        });
</script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
<![endif]-->
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                                <a href="AdminLogin.aspx">Back!!</a>
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
         <div>
                                <%--<button class="btn btn-add">Login</button>--%>

                                <%--<a class="btn btn-warning" href="register.html">Register</a>--%>
                                <center><a href="http://www.iphygenia.com" target="_blank">Designed & Developed By:-<br /><h4>Iphygenia Solution Pvt.Ltd.</h4></a></center
                            </div>
    </form>
</body>
</html>
