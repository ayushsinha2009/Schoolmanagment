<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="AddSubSubjectMaster.aspx.cs" EnableEventValidation="false" Inherits="AdminLogin_AddSubSubjectMaster" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want to Delete The Data ?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
   
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="header-icon">
                <i class="fa fa-book"></i>
            </div>
            <div class="header-title">
                <h1>Sub Subject Master</h1>
                <small>Enter details of Sub Subject Master names here..</small>
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
                    <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Sub Subject Details</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                             <div class="form-group">
                                <label>Subject Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddnsubject" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                 <asp:DropDownList ID="ddnsubject" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddnsubject_SelectedIndexChanged"></asp:DropDownList>
                                 <asp:Label ID="lblmarks" runat="server"></asp:Label>
                            </div>
                           
                            <div class="form-group">
                                <label>Sub Subject Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtsubsubjectname" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtsubsubjectname" runat="server"  CssClass="form-control"  placeholder="Sub Subject Name.." autocomplete="off" ValidationGroup="c"></asp:TextBox>

                            </div>
                             <div class="form-group">
                                <label>TMarks</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmarks" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtmarks" runat="server"  CssClass="form-control"  placeholder="Marks.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                 <asp:FilteredTextBoxExtender ID="txtmarks_FilteredTextBoxExtender" 
                         runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtmarks">
                         </asp:FilteredTextBoxExtender>   

                            </div>
                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Sub Subject" ValidationGroup="c" OnClick="BtnAdd_Click"  />
                                <asp:Button ID="Btnupdate" CssClass="btn btn-add" runat="server" Text="Update Sub Subject" OnClick="Btnupdate_Click"   />
                                <asp:Button ID="Btndel" CssClass="btn btn-add" runat="server" Text="Delete Sub Subject" OnClick="Btndel_Click" OnClientClick="Confirm()"  />
                                <asp:Button ID="Btncncl" CssClass="btn btn-add" runat="server" Text="Cancel" OnClick="Btncncl_Click"  />
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

                                <h4>Sub Subject Master Details</h4>
                            </div>
                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView ID="gvdetails" CssClass="table table-bordered table-striped table-hover" runat="server" EmptyDataText="No Record!" AutoGenerateColumns="False" DataKeyNames="SubId" OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="25" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvdetails_SelectedIndexChanged">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <Columns>
                                    
                                        <asp:TemplateField HeaderText = "S.No." ItemStyle-Width="100">
                                         <ItemTemplate>
                                          <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                          </ItemTemplate>
                                          </asp:TemplateField>
                                        <asp:BoundField DataField="SubjectId" HeaderText="Subject Id" /> 
                                    <asp:BoundField DataField="SubjectName" HeaderText="Subject Name" /> 
                                   <asp:BoundField DataField="TotalMarks" HeaderText="Total Marks" />
                                   <asp:BoundField DataField="SubSubjectName" HeaderText="Sub Subject Name" />
                                   <asp:BoundField DataField="Marks" HeaderText="Sub Marks" />
                                   <asp:BoundField DataField="Createdby" HeaderText="created By" />
                                  <asp:BoundField DataField="Createdon" HeaderText="created On" />
                                  <asp:BoundField DataField="Updatedon" HeaderText="Updated On" />
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

