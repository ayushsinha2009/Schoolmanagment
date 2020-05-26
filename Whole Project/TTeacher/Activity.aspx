<%@ Page Title="" Language="C#" MasterPageFile="~/TTeacher/AMasterPage.master" AutoEventWireup="true" CodeFile="Activity.aspx.cs" EnableEventValidation="false" Inherits="TTeacher_Activity" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="header-icon">
                <i class="fa fa-book"></i>
            </div>
            <div class="header-title">
                <h1>Student Extra Curricular Activity</h1>
                <small>Student Extra Curricular Activity Details..</small>
            </div>
        </section>
        <section class="content">
             <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Student Extra Curricular Activity</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddnstudent" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnstudent" AutoPostBack="true" CssClass="form-control" ValidationGroup="c" runat="server" OnSelectedIndexChanged="ddnstudent_SelectedIndexChanged"></asp:DropDownList>

                                

                            </div>
                            <div class="form-group">
                                <label>Class</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddnclass" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnclass" CssClass="form-control" ValidationGroup="c" runat="server"></asp:DropDownList>
                                
                            </div>
                            <div class="form-group">
                                <label>Section</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddnsection" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsection" CssClass="form-control" ValidationGroup="c" runat="server"></asp:DropDownList>
                                
                            </div>
                            
                                  <div class="form-group">
                                <label>Extra Curricular Activity</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtactivity" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtactivity" TextMode="MultiLine"  CssClass="form-control" runat="server" placeholder="Activity.." autocomplete="off" ValidationGroup="c"></asp:TextBox>

                                

                            </div>

                            <div class="form-group">
                                <label>Description</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtdesc" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtdesc" TextMode="MultiLine"  CssClass="form-control" runat="server" placeholder="Description.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
             
                            </div>

                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Activity Details" ValidationGroup="c" OnClick="BtnAdd_Click" />
                              
                                <asp:Label ID="lblId" Visible="false" runat="server"></asp:Label>
                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
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

                                <h4>Activity Details</h4>
                            </div>
                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                 <asp:GridView ID="gvdetails" Cssclass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC"  EmptyDataText="No Record!" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvdetails1_PageIndexChanging" PageSize="25">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <Columns>
                            <asp:BoundField DataField="ActivityId" HeaderText=" S.No. " />
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="ClassName" HeaderText="Class Name" />
                            <asp:BoundField DataField="SectionName" HeaderText="Section Name" />
                            <asp:BoundField DataField="StudentId" HeaderText="student Id" />
                            <asp:BoundField DataField="ClassId" HeaderText="Class Id" />
                            <asp:BoundField DataField="SectionId" HeaderText="Section Id" />
                            <asp:BoundField DataField="StudentExtraCurricularActivity" HeaderText="Extra Curricular Activity" />
                            <asp:BoundField DataField="Description" HeaderText="Activity Description" />
                            <asp:BoundField DataField="Createdby" HeaderText="Created By" />
                            
                            <asp:BoundField DataField="Createdon" HeaderText="Created on" />

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

