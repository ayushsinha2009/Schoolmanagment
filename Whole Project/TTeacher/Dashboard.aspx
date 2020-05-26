<%@ Page Title="" Language="C#" MasterPageFile="~/TTeacher/AMasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="TTeacher_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="header-icon">
                <i class="fa fa-dashboard"></i>
            </div>
            <div class="header-title">
                <h1>Teacher Dashboard</h1>
                <small>Welcome
                    <asp:Label ID="lblEmployeeName" runat="server"></asp:Label></small>

            </div>

        </section>
         <section class="content">
            <div class="row">
        <%--          <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                    <a href="#">
                        <div id="cardbox1">
                            <div class="statistic-box">
                                <i class="fa fa-user-plus fa-3x"></i>
                                <div class="counter-number pull-right">
                                    <span class="count-number">
                                        <asp:Label ID="lblfy" runat="server"></asp:Label></span>
                                    <span class="slight"></span>
                                </div>
                                <h3>Financial Year</h3>
                            </div>
                        </div>
                    </a>
                </div>--%>
                
           <%--     <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                    <a href="#">
                        <div id="cardbox4">
                            <div class="statistic-box">
                                <i class="fa fa-files-o fa-3x"></i>
                                <div class="counter-number pull-right">
                                    <span class="count-number">
                                        <asp:Label ID="lblexpenses" runat="server"  ></asp:Label></span>
                                    <span class="slight"></span>
                                </div>
                                <h3>Total Expenses</h3>
                                 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            </div>
                        </div>
                    </a>
                </div>--%>
                
            </div>
        </section>
    </div>
</asp:Content>

