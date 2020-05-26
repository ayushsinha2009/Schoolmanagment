<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="AddSubject.aspx.cs" EnableEventValidation="false" Inherits="AdminLogin_AddSubject" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
                <h1>Subject Master</h1>
                <small>Enter details of Subject Master names here..</small>
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
                    <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Subject Details</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Subject Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtsubjectname" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtsubjectname" runat="server"  CssClass="form-control"  placeholder="Subject Name.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Subject Type</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddntype" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddntype" ValidationGroup="c" CssClass="form-control" runat="server">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Compulsory</asp:ListItem>
                                    <asp:ListItem Value="2">Optional</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                               <div class="form-group">
                                <label>Subject Total Marks</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmarks" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtmarks" runat="server"  CssClass="form-control"  placeholder="Marks.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                 <asp:FilteredTextBoxExtender ID="txtmarks_FilteredTextBoxExtender" 
                         runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtmarks">
                         </asp:FilteredTextBoxExtender>   

                            </div>
                            <div class="form-group">
                                <label>Subject Description</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsubdesc" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                          <asp:TextBox ID="txtsubdesc" TextMode="MultiLine"  CssClass="form-control" runat="server" placeholder="Description.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                            </div>
                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Subject" ValidationGroup="c" OnClick="BtnAdd_Click" />
                                <asp:Button ID="Btnupdate" CssClass="btn btn-add" runat="server" Text="Update Subject" OnClick="Btnupdate_Click"  />
                                <asp:Button ID="Btndel" CssClass="btn btn-add" runat="server" Text="Delete Subject" OnClick="Btndel_Click" />
                                <asp:Button ID="Btncncl" CssClass="btn btn-add" runat="server" Text="Cancel" OnClick="Btncncl_Click" />
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

                                <h4>Subject Master Details</h4>
                            </div>
                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView ID="gvdetails" CssClass="table table-bordered table-striped table-hover" runat="server" EmptyDataText="No Record!" AutoGenerateColumns="False" DataKeyNames="SubjectId" AllowPaging="True" OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="25" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvdetails_SelectedIndexChanged">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <Columns>
                                    
                                        <asp:TemplateField HeaderText = "S.No." ItemStyle-Width="100">
                                         <ItemTemplate>
                                          <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                          </ItemTemplate>
                                          </asp:TemplateField>
                                    <asp:BoundField DataField="SubjectName" HeaderText="Subject Name" />
                                        <asp:BoundField DataField="TotalMarks" HeaderText="Total Marks" />
                                    <asp:BoundField DataField="SubjectDescription" HeaderText="Subject Description" />
                                        <asp:BoundField DataField="SubjectType" HeaderText="Subject Type" /> 
                                    <asp:BoundField DataField="Createdon" HeaderText="Created on" />
                                    <asp:BoundField DataField="Updatedon" HeaderText="Updated on" />
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

