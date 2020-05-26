<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IDCard.aspx.cs" Inherits="AdminLogin_IDCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>SMS ID Card|| Admin Panel</title>
    <!-- Favicon and touch icons -->
    
     <link rel="shortcut icon" href="assets/dist/img/ico/favicon.ico" type="image/x-icon">
    <!-- Start Global Mandatory Style
         =====================================================================-->
    <!-- jquery-ui css -->
    <link href="assets/plugins/jquery-ui-1.12.1/jquery-ui.min.css" rel="stylesheet" type="text/css" />
    <!-- Bootstrap -->
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Bootstrap rtl -->
    <!--<link href="assets/bootstrap-rtl/bootstrap-rtl.min.css" rel="stylesheet" type="text/css"/>-->
    <!-- Lobipanel css -->
    <link href="assets/plugins/lobipanel/lobipanel.min.css" rel="stylesheet" type="text/css" />
    <!-- Pace css -->
    <link href="assets/plugins/pace/flash.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome -->
    <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Pe-icon -->
    <link href="assets/pe-icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css" />
    <!-- Themify icons -->
    <link href="assets/themify-icons/themify-icons.css" rel="stylesheet" type="text/css" />
    <!-- End Global Mandatory Style
         =====================================================================-->
    <!-- Start page Label Plugins 
         =====================================================================-->
    <!-- Emojionearea -->
    <link href="assets/plugins/emojionearea/emojionearea.min.css" rel="stylesheet" type="text/css" />
    <!-- Monthly css -->
    <link href="assets/plugins/monthly/monthly.css" rel="stylesheet" type="text/css" />
    <!-- End page Label Plugins 
         =====================================================================-->
    <!-- Start Theme Layout Style
         =====================================================================-->
    <!-- Theme style -->
    <link href="assets/dist/css/stylecrm.css" rel="stylesheet" type="text/css" />
    <!-- Theme style rtl -->
    <!--<link href="assets/dist/css/stylecrm-rtl.css" rel="stylesheet" type="text/css"/>-->
    <!-- End Theme Layout Style
         =====================================================================-->

    <!-- Validation Errors -->
    <link href="assets/ValidationErrors/css/ErrorMessage.css" rel="stylesheet" type="text/css" />
    <style>
        .disabled {
            color: #009688 !important;
        }
        .auto-style2 {
            width: 125px;
            height: 116px;
        }
        .auto-style3 {
            width: 152px
        }
        .auto-style4 {
            width: 378px;
        }
        .auto-style5 {
            width: 152px;
            height: 71px;
        }
        .auto-style6 {
            width: 378px;
            height: 71px;
        }
        .auto-style7 {
            height: 71px;
        }
        .auto-style8 {
            width: 152px;
            height: 69px;
        }
        .auto-style9 {
            width: 378px;
            height: 69px;
        }
        .auto-style10 {
            height: 69px;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style5">
                    <img alt="" class="auto-style2" src="../images/smsimage.jpg" /></td>
                <td class="auto-style6"><h1>School Name</h1></td>
                <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Class::<asp:Label ID="lblclass" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Section::<asp:Label ID="lblsection" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9"><h1>Branch Name</h1></td>
                <td class="auto-style10"><asp:Image ID="Photo"  runat="server" Height="117px" Width="107px" /></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4"><h2>Name::<asp:Label ID="lblname" runat="server"></asp:Label>
                    <br />
                 D.O.B::<asp:Label ID="lbldob" runat="server"></asp:Label>
                    <br />
                    BloodGroup::<asp:Label ID="lblbg" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4"><h2>Add::<asp:Label ID="lblAdd" runat="server"></asp:Label></h2></td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">Contact:: <asp:Label ID="lblmob" runat="server"></asp:Label></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">Valid Upto:: <asp:Label ID="lblvalid" runat="server"></asp:Label></td>
                <td>&nbsp;</td>
            </tr>

        </table>
    </div>
    </form>
</body>
</html>
