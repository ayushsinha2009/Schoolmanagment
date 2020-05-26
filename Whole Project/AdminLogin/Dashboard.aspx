<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="AdminLogin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="header-icon">
                <i class="fa fa-dashboard"></i>
            </div>
            <div class="header-title">
                <h1>Admin Dashboard</h1>
                <small>Welcome
                    <asp:Label ID="lblEmployeeName" runat="server"></asp:Label></small>

            </div>

        </section>
         <section class="content">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
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
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                    <a href="AddStafTypeMaster.aspx">
                        <div id="cardbox2">
                            <div class="statistic-box">
                                <i class="fa fa-user-secret fa-3x"></i>
                                <div class="counter-number pull-right">
                                    <span class="count-number">
                                        <asp:Label ID="lblstafftype" runat="server"></asp:Label></span>
                                    <span class="slight"></span>
                                </div>
                                <h3>Total Staff Type</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                    <a href="AddStaffMaster.aspx">
                        <div id="cardbox3">
                            <div class="statistic-box">
                                <i class="fa fa-money fa-3x"></i>
                                <div class="counter-number pull-right">
                                    </i><span class="count-number">
                                        <asp:Label ID="lblstaff" runat="server"></asp:Label></span>
                                    <span class="slight"></span>
                                </div>
                                <h3>Total Staff(Non Teaching)</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                    <a href="AddTeacher.aspx">
                        <div id="cardbox4">
                            <div class="statistic-box">
                                <i class="fa fa-files-o fa-3x"></i>
                                <div class="counter-number pull-right">
                                    <span class="count-number">
                                        <asp:Label ID="lblteacher" runat="server"></asp:Label></span>
                                    <span class="slight"></span>
                                </div>
                                <h3>Total Teaching Staff</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                    <a href="AddStudent.aspx">
                        <div id="cardbox4">
                            <div class="statistic-box">
                                <i class="fa fa-files-o fa-3x"></i>
                                <div class="counter-number pull-right">
                                    <span class="count-number">
                                        <asp:Label ID="lblstudent" runat="server"></asp:Label></span>
                                    <span class="slight"></span>
                                </div>
                                <h3>Total Students</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                    <a href="ViewExpense.aspx">
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
                </div>
                <asp:Timer ID="timer1" runat="server" Interval="50000"></asp:Timer>
            </div>
        </section>
    </div>
</asp:Content>

