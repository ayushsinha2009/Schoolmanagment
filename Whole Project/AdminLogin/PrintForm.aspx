<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintForm.aspx.cs" Inherits="AdminLogin_PrintForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>SMS Studennt Form|| Admin Panel</title>
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
        .auto-style1 {
            width: 901px;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1"><center><h1>School Name</h1></center></td>
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style1"><center><h1>Branch Name</h1></center></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"><center><h2>Address</h2></center></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Image ID="Photo"  runat="server" Height="117px" Width="107px" /></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
              <tr>
                <td class="auto-style1"><strong>&nbsp; Student Name::<asp:Label ID="Label1" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
              <tr>
                <td class="auto-style1"><strong>&nbsp; Middle Name::<asp:Label ID="Label2" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
               <tr>
                <td class="auto-style1"><strong>&nbsp; Last Name::<asp:Label ID="Label3" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; Class Name::<asp:Label ID="Label4" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; Section Name::<asp:Label ID="Label5" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; Gender::<asp:Label ID="Label6" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; D.O.B.::<asp:Label ID="Label7" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"><strong>&nbsp;Blood  Group.::<asp:Label ID="Label26" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; Student Enrollment No.::<asp:Label ID="Label8" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; Roll No.::<asp:Label ID="Label9" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; Aadhar Card No.::<asp:Label ID="Label10" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; Corresspondance Address::<asp:Label ID="Label11" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; Permanent Address::<asp:Label ID="Label12" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"><strong>&nbsp; State::<asp:Label ID="Label13" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; City::<asp:Label ID="Label14" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; Pincode::<asp:Label ID="Label15" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                <tr>
                <td class="auto-style1"><strong>&nbsp; Home Contact No::<asp:Label ID="Label16" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                   <tr>
                <td class="auto-style1"><strong>&nbsp; Student Contact No::<asp:Label ID="Label17" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
              <tr>
                <td class="auto-style1"><strong>&nbsp; Father Name::<asp:Label ID="Label18" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"><strong>&nbsp; Father Contact No::<asp:Label ID="Label19" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
               <tr>
                <td class="auto-style1"><strong>&nbsp; Father Occupation::<asp:Label ID="Label20" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; Father Designation::<asp:Label ID="Label21" runat="server"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; Mother Name::<asp:Label ID="Label22" runat="server"></asp:Label></strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; Mother Contact No::<asp:Label ID="Label23" runat="server"></asp:Label></strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; Mother Occupation::<asp:Label ID="Label24" runat="server"></asp:Label></strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>&nbsp; Mother Designation::<asp:Label ID="Label25" runat="server"></asp:Label></strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong></strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1"><strong>
                    <br />
                    <br />
                    (Authorized Signatory)</strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
