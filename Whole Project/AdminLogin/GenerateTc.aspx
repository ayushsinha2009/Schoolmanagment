<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GenerateTc.aspx.cs" Inherits="Admin_GenerateTc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>SMS Generate TC</title>

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
        <style type="text/css">
            .auto-style1 {
                text-decoration: underline;
            }
        </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
     <table style="width: 100%;">
            <tr>
                
                <td><center><h1>School Name(BranchName)</h1></center></td>
                <td>School Logo</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><center><h2>Address</h2></center></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td><center>T<span class="auto-style1"><strong>To Whom So Ever IT May Concern.</strong></span></center></td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>This is to Certify that <asp:Label ID="lblstudent" runat="server"></asp:Label>&nbsp;Son Daughter of Mr. <asp:Label ID="lblfathername" runat="server"></asp:Label>&nbsp;is a bonafide student of this institution.<br />
                    Studying in Claas <asp:Label ID="lblclass" runat="server"></asp:Label> of section <asp:Label ID="lblsection" runat="server"></asp:Label> had paid the amount of towards Transfer Certificate fees</strong> <asp:TextBox ID="txtamnt" runat="server">300/-</asp:TextBox> <strong>&nbsp;for the Academic year <asp:Label ID="lblfy" runat="server"></asp:Label>
                    </strong>
                </td>
                <td></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td></td>
                <td></td>
                <td>&nbsp;</td>
            </tr>
              <tr>
                <td></td>
                <td></td>
                <td>&nbsp;</td>
            </tr>
              <tr>
                <td>Authorised Signatory ..(Stamp)</td>
                <td>&nbsp;</td>
                <td><a href="Dashboard.aspx">Return</a></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
