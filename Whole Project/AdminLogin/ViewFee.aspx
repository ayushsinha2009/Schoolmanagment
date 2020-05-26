<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="ViewFee.aspx.cs" Inherits="AdminLogin_ViewFee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

             <script>
                 function doPrint() {
                     var prtContent = document.getElementById('<%= gvdetails.ClientID %>');
            prtContent.border = 0; //set no border here
            var WinPrint = window.open('', '', 'left=100,top=100,width=1000,height=1000,toolbar=0,scrollbars=1,status=0,resizable=1');
            WinPrint.document.write(prtContent.outerHTML);
            WinPrint.document.close();
            WinPrint.focus();
            WinPrint.print();
            WinPrint.close();
        }
</script>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="header-icon">
                <i class="fa fa-book"></i>
            </div>
            <div class="header-title">
                <h1>Fee Details</h1>
                <small>Student Fee Details</small>
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Search By</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Student Name</label>
                                <asp:TextBox ID="txtname" CssClass="form-control" runat="server" placeholder="Student Name.."  autocomplete="off" AutoPostBack="true" OnTextChanged="txtname_TextChanged" ></asp:TextBox>
                            </div>
                          
                            <div class="form-group">

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

                                <h4>Fee Details</h4>
                            </div>
                            <div style="float: right;">
                                 <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Print Data" OnClientClick="doPrint()" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">

                                                              <asp:GridView ID="gvdetails" CssClass="table table-bordered table-striped table-hover" runat="server" EmptyDataText="No Record!" AutoGenerateColumns="False">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                   <Columns>
                                                                                                    <asp:TemplateField HeaderText = "S.No." ItemStyle-Width="100">
                                                <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                          </asp:TemplateField>
                    
                    
                    <asp:BoundField DataField="Date" HeaderText="Date" />
                    <asp:BoundField DataField="Month" HeaderText="Month" />
                    <asp:BoundField DataField="Student Name" HeaderText="Student Name" />
                    <asp:BoundField DataField="ClassName" HeaderText="Class Name" />
                    <asp:BoundField DataField="SectionName" HeaderText="Section Name" />
                    <asp:BoundField DataField="VehicleType" HeaderText="Vehicle Type" />
                    <asp:BoundField DataField="TutionFee" HeaderText="Tution Fee" />
                    <asp:BoundField DataField="LibraryFee" HeaderText="Library Fee" />
                    <asp:BoundField DataField="TrnsportationFee" HeaderText="Trnsportation Fee" />
                    <asp:BoundField DataField="Others" HeaderText="Others" />
                    <asp:BoundField DataField="TotalFee" HeaderText="Total Fee" />
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

