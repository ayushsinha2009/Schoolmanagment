<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReportCard1.aspx.cs" Inherits="TTeacher_ReportCard1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>SMS Report Card</title>

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
            .auto-style2 {
                height: 19px;
            }
        </style>
    </head>
<body>
<body>
    <form id="form1" runat="server">
    <div>
       <table style="width: 100%;">
            <tr>
                
                <td><center><h1>School Name(BranchName)</h1></center></td>
                <td>School Logo</td>
                <td><a href="TeacherDashboard.aspx">Return</a></td>
            </tr>
            <tr>
                <td><center><h2>Address</h2></center></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td><center><h2>Report Card</h2></center></td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><center><strong>Student Name<asp:Label ID="lblstudent" runat="server"></asp:Label><br />
                     Claas <asp:Label ID="lblclass" runat="server"></asp:Label><br />
                    Section Name <asp:Label ID="lblsection" runat="server"></asp:Label><br />
                    Exam Type <asp:Label ID="lblsem" runat="server"></asp:Label><br />
                    Session <asp:Label ID="lblfy" runat="server"></asp:Label>
                    
                    </strong></center>
                    
                </td>
                <td></td>
                <td>&nbsp;</td>
            </tr>
           <tr>

                <td>English Ist::<asp:Label ID="lble1" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
                <td></td>
                <td>&nbsp;</td>
            </tr>
           <tr>
                <td>English IInd:<asp:Label ID="lble2" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
                <td></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Hindi Ist::<asp:Label ID="lblh1" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
                <td></td>
                <td>&nbsp;</td>
            </tr>
         
            <tr>
                <td>Hindi IInd::<asp:Label ID="lblh2" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
                <td></td>
                <td>&nbsp;</td>
            </tr>
              <tr>
                <td>Maths Ist::<asp:Label ID="lblm1" runat="server"></asp:Label>
                    <br />
                    <br />
                  </td>
                <td></td>
                <td>&nbsp;</td>
            </tr>
              <tr>
                <td>Maths IInd::<asp:Label ID="lblm2" runat="server"></asp:Label>
                    <br />
                    <br />
                  </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           <tr>
               <td>Phsics ::<asp:Label ID="lblphysics" runat="server"></asp:Label>
                    <br />
                    <br />
                  </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           <tr>
                   <td>Chemistry::<asp:Label ID="lblchem" runat="server"></asp:Label>
                    <br />
                    <br />
                  </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           <tr>
                   <td>Biology::<asp:Label ID="lblbio" runat="server"></asp:Label>
                    <br />
                    <br />
                  </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           <tr>
                <td>Computers::<asp:Label ID="lblcomputers" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
           <tr>
                <td>Social Studies::<asp:Label ID="lblss" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           
          
              <tr>
                <td>Total Marks::<asp:Label ID="lbltotal" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Percentage::<asp:Label ID="lblpercentage" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td>Teacher Comments::<asp:TextBox ID="txtcomments" TextMode="MultiLine" CssClass="form-control" runat="server" Height="194px" Width="1300px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           <tr>
                <td><h2>Grading Scale:- A=90- 100% B=80-89% C=70-79% D=60-69%</h2></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           </tr>
              <tr>
                <td>&nbsp;</td>
                <td>Authorised Signatory ..(Stamp)</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
