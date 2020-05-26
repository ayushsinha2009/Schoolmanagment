<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="ViewTimeTable.aspx.cs" EnableEventValidation="false" Inherits="TTeacher_ViewTimeTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

             <script>
        function doPrint()
        {
            var prtContent = document.getElementById('<%= gvdetails.ClientID %>');
            prtContent.border = 0; //set no border here
            var WinPrint = window.open('','','left=100,top=100,width=1000,height=1000,toolbar=0,scrollbars=1,status=0,resizable=1');
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
                <h1>Time Table</h1>
                <small>Time Table</small>
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
<%--                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Time Table</h4>
                                
                            </div>
                        </div>
                        
                        
                    </div>--%>
                </div>

            </div>
           <div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-bd lobidrag">
                        <div class="panel-heading">
                            <div class="panel-title">

                                <h4>Time Table(Every Day In A Week)</h4>
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
                    
                    
                    <asp:BoundField DataField="Tperiod" HeaderText="Period" />
                    <asp:BoundField DataField="TFrom" HeaderText="From" />
                    <asp:BoundField DataField="Till" HeaderText="Till" />
                    <asp:BoundField DataField="TeacherName" HeaderText="Teacher Name" />
                    <asp:BoundField DataField="SubSubjectName" HeaderText="Sub Subject Name" />
                    <asp:BoundField DataField="ClassName" HeaderText="Class Name" />
                    <asp:BoundField DataField="SectionName" HeaderText="Section Name" />
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

