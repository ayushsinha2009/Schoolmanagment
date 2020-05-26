<%@ Page Title="" Language="C#" MasterPageFile="~/TTeacher/AMasterPage.master" AutoEventWireup="true" CodeFile="MarksObtained.aspx.cs" EnableEventValidation="false" Inherits="TTeacher_MarksObtained" %>
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
                <h1>Marks Obtained</h1>
                <small>Enter details of Marks Obtained here..</small>
            </div>
        </section>
        <section class="content">
             <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Marks Obtained</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Sub Subjects</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddnsub" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsub" CssClass="form-control" ValidationGroup="c"  runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddnsub_SelectedIndexChanged"></asp:DropDownList>
                                <asp:Label ID="lblmarks" runat="server" Text="Total Marks:-"></asp:Label>
                            </div>
                             <div class="form-group">
                                <label>Class</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddnclass" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnclass" CssClass="form-control" ValidationGroup="c" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label>Section</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddnsection" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsection" CssClass="form-control" ValidationGroup="c" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddnsection_SelectedIndexChanged"></asp:DropDownList>
                                
                            </div>
                             <div class="form-group">
                                <label>Exam Type</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddnexamtype" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnexamtype" ValidationGroup="c" CssClass="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddnexamtype_SelectedIndexChanged">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem Value="1">Quarterly</asp:ListItem>
                    <asp:ListItem Value="2">Half Yearly</asp:ListItem>
                    <asp:ListItem Value="3">Final</asp:ListItem>
                </asp:DropDownList>
                            </div>
                                <div class="form-group">
                                <label>Student Details</label>
                                <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC" EmptyDataText="No Record!" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False">
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <Columns>
                                      <asp:TemplateField HeaderText = "S.No." ItemStyle-Width="100">
                                                <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                          </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id no.">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("studentid") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("studentid") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="StudentRollNo" HeaderText="Roll No." />
                                <asp:BoundField DataField="Student Name" HeaderText="Name" />
                                <asp:TemplateField HeaderText="Enter Marks.">
                                    <EditItemTemplate>
                                      <asp:TextBox ID="txtmarks"   CssClass="form-control" runat="server" placeholder="Enter Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                         <asp:FilteredTextBoxExtender ID="txtmarks_FilteredTextBoxExtender3" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtmarks">
                                                            </asp:FilteredTextBoxExtender>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtmarks"   CssClass="form-control" runat="server" placeholder="Enter Marks.." MaxLength="2" autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="txtmarks_FilteredTextBoxExtender3" 
                                                           runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtmarks">
                                                            </asp:FilteredTextBoxExtender>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                        </asp:GridView>

                           
                          
                            <div class="form-group">
                             

                                  <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Marks" ValidationGroup="c" OnClick="BtnAdd_Click" />
                                    <asp:Button ID="Btnupdate" CssClass="btn btn-primary" runat="server" Text="Update Marks" OnClick="Btnupdate_Click"  />
                                    <asp:Button ID="Btndel" CssClass="btn btn-add" runat="server" Text="Delete Marks" OnClick="Btndel_Click"  />
                                    <asp:Button ID="Btncncl" CssClass="btn btn-add" runat="server" Text="Cancel" OnClick="Btncncl_Click"  />
                                     <asp:Label ID="lblId" Visible="false" runat="server" ></asp:Label> 
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
                                <h4>Marks Obtained Details</h4>
                            </div>
                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                 <asp:GridView ID="gvdetails" CssClass="table table-bordered table-striped table-hover" runat="server" EmptyDataText="No Record!" AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="ObtId" OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="25" OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true">
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                              <Columns>
                                                <asp:TemplateField HeaderText = "S.No." ItemStyle-Width="100">
                                                <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                          </asp:TemplateField>
                       
                    <asp:BoundField DataField="ClassName" HeaderText="Class Name" /> 
                       
                    <asp:BoundField DataField="SectionName" HeaderText="Section Name" />    
                    
                    <asp:BoundField DataField="SubSubjectName" HeaderText="Sub Subject Name" /> 
                    <asp:BoundField DataField="ExamType" HeaderText="Exam" /> 
                    
                    <asp:BoundField DataField="StudentRollNo" HeaderText="Roll No." />    
                    <asp:BoundField DataField="Student Name" HeaderText="Student Name" />    
                    
                    <asp:BoundField DataField="MarksObt" HeaderText="Marks Obtained" />
                    <asp:BoundField DataField="Teacher Name" HeaderText="Teacher Name" /> 
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

