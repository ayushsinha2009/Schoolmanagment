﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="ViewMarks.aspx.cs" EnableEventValidation="false" Inherits="AdminLogin_ViewMarks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="header-icon">
                <i class="fa fa-book"></i>
            </div>
            <div class="header-title">
                <h1>View Marks</h1>
                <small>Marks Details..</small>
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
                                  <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Class & Section Information</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                           <div class="form-group">
                                <label>Class</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddnclass" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnclass" CssClass="form-control" ValidationGroup="c" runat="server"></asp:DropDownList>
                                

                            </div>
                            <div class="form-group">
                                <label>Section</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddnsection" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsection" CssClass="form-control" ValidationGroup="c" runat="server"></asp:DropDownList>
                                
                            </div>
                             <div class="form-group">
                
                                           <asp:Button ID="BtnSearch" CssClass="btn btn-add" runat="server" Text="Get Marks" OnClick="BtnSearch_Click" />
                                 <asp:Button ID="BtnCancel" CssClass="btn btn-add" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
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

                                <h4>Marks Details</h4>
                            </div>
                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView ID="gvdetails" CssClass="table table-bordered table-striped table-hover" runat="server" EmptyDataText="No Record!" AllowPaging="true" AutoGenerateColumns="false" PageSize="50" OnPageIndexChanging="gvdetails_PageIndexChanging">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
             <Columns>
                                                  <asp:TemplateField HeaderText = "S.No." ItemStyle-Width="100">
                                                <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                          </asp:TemplateField>
                    <asp:BoundField DataField="Student Name" HeaderText="Student Name" />
                    <asp:BoundField DataField="ClassName" HeaderText="Class" />
                    <asp:BoundField DataField="SectionName" HeaderText="Section" />
                    <asp:BoundField DataField="StudentRollNo" HeaderText="Student Roll No." />
                    <asp:BoundField DataField="ExamType" HeaderText="Exam Type" />
                    <asp:BoundField DataField="SubSubjectName" HeaderText="Subject Name" />   
                    <asp:BoundField DataField="MarksObt" HeaderText="Marks." />
                    <asp:BoundField DataField="Teacher Name" HeaderText="Teacher Name" />
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

