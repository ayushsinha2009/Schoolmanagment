<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentFee1.aspx.cs" Inherits="AAcountant_StudentFee1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>SMS StudentFee</title>

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
    <div>
        <table style="width: 100%;">
            <tr>
                
                <td><center><h1>School Name(BranchName)</h1></center></td>
                <td>School Logo</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><center><h2>Address:-</h2></center></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td><center>1.Tution Fee.<asp:Label ID="lbltf"  runat="server"></asp:Label>/-</center></td>
                <td>
                    
                 </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><center>2.Library Fee.<asp:Label ID="lbllf"  runat="server"></asp:Label>/-</center></td>
                <td></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><center>3.Transportation Fee.<asp:Label ID="lbltrnsptfee"  runat="server"></asp:Label>/-</center></td>
                <td></td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td><center>4.Others.<asp:Label ID="lblothers"  runat="server"></asp:Label>/-</center></td>
                <td>Description.<asp:Label ID="lbldesc"  runat="server"></asp:Label></td>
                <td>&nbsp;</td>
            </tr>
              <tr>
                <td><center>5.Total Fee.<asp:Label ID="lbltotalfee"  runat="server"></asp:Label>/-</center></td>
                <td></td>
                <td>&nbsp;</td>
            </tr>
              <tr>
                <td><center>6.Fee Category.<asp:Label ID="lblcat"  runat="server"></asp:Label>/-</center></td>
                <td>&nbsp;</td>
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
