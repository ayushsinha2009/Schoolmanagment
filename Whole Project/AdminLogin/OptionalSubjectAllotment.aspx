<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="OptionalSubjectAllotment.aspx.cs" EnableEventValidation="false" Inherits="AdminLogin_OptionalSubjectAllotment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <script type = "text/javascript">
            function SelectAllCheckboxes1(chk) {
                $('#<%=gvdetails.ClientID%>').find("input:checkbox").each(function () {
                if (this != chk) { this.checked = chk.checked; }
            });
        }
    </script>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="header-icon">
                <i class="fa fa-book"></i>
            </div>
            <div class="header-title">
                <h1>Student Optional Subject Allotment</h1>
                <small>Student Optional Subject Allotment Details..</small>
            </div>
        </section>
        <section class="content">
            
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Student Optional Subject Allotment</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                               <div class="form-group">
                                <label>Teacher Name.</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddnteacher" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnteacher" CssClass="form-control" ValidationGroup="c" runat="server" ></asp:DropDownList>
                            </div>
                         
<%--                            <div class="form-group">
                                <label>Subject</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddnsubject" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsubject" CssClass="form-control" ValidationGroup="c"  runat="server"></asp:DropDownList>
                                

                            </div>--%>
<%--                            <div class="form-group">
                                <label>Sub Subject</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddnsubsubject" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsubsubject" CssClass="form-control" ValidationGroup="c" runat="server" ></asp:DropDownList>
                            </div>--%>

                               <div class="form-group">
                                <label>Class</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddnclass" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnclass" CssClass="form-control" ValidationGroup="c" runat="server"></asp:DropDownList>
                                

                            </div>
                            <div class="form-group">
                                <label>Section</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddnsection" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnsection" CssClass="form-control" ValidationGroup="c" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddnsection_SelectedIndexChanged"></asp:DropDownList>
                                
                            </div>
                              <div class="form-group">
                                <label>Student Details</label>
                                <asp:GridView ID="gvdetails" CssClass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC" EmptyDataText="No Record!" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False">
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
                                <asp:TemplateField HeaderText="Id .">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("studentid") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("studentid") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                  <asp:BoundField DataField="StudentRollNo" HeaderText="Roll No." />
                                  <asp:TemplateField HeaderText="Select All">
                                <HeaderTemplate>
                                <asp:CheckBox ID="cbSelectAll" runat="server" onclick="javascript:SelectAllCheckboxes1(this);"  />
                                </HeaderTemplate>
                                <ItemTemplate>
                               <%-- <asp:CheckBox ID="chk" runat="server">
                                </asp:CheckBox>--%>
                                </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="">
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                  <asp:TemplateField HeaderText="">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                           <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Student Name" HeaderText="Name" />

 
                            </Columns>
                        </asp:GridView>

                            </div>

                            <%--<div class="form-group">
                                <label>Month</label>
                                <asp:DropDownList ID="ddnmonth" ValidationGroup="c"  CssClass="form-control" runat="server">
                                                        <asp:ListItem Value="0">Select</asp:ListItem>
                                                     <asp:ListItem Value="1">January</asp:ListItem>
                                                    <asp:ListItem Value="2">February</asp:ListItem>
                                                     <asp:ListItem Value="3">March</asp:ListItem>
                                                    <asp:ListItem Value="4">April</asp:ListItem>
                                                    <asp:ListItem Value="5">May</asp:ListItem>
                                                    <asp:ListItem Value="6">Hune</asp:ListItem>
                                                     <asp:ListItem Value="7">July</asp:ListItem>
                                                    <asp:ListItem Value="8">August</asp:ListItem>
                                                    <asp:ListItem Value="9">September</asp:ListItem>
                                                    <asp:ListItem Value="10">October</asp:ListItem>
                                                     <asp:ListItem Value="11">November</asp:ListItem>
                                                    <asp:ListItem Value="12">December</asp:ListItem>
                                                     </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddnmonth" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>

                            </div>
                                                   <div class="form-group">
                                <label>Day</label>
                                <asp:DropDownList ID="ddnday" ValidationGroup="c"  CssClass="form-control" runat="server">
                                                        <asp:ListItem Value="0">Select</asp:ListItem>
                                                    <asp:ListItem Value="1">Monday</asp:ListItem>
                                                    <asp:ListItem Value="2">Tuesday</asp:ListItem>
                                                    <asp:ListItem Value="3">Wednesday</asp:ListItem>
                                                    <asp:ListItem Value="4">Thursday</asp:ListItem>
                                                    <asp:ListItem Value="5">Friday</asp:ListItem>
                                                    <asp:ListItem Value="6">Saturday</asp:ListItem>
                                                    <asp:ListItem Value="7">Sunday</asp:ListItem>
                                                     </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddnday" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>

                            </div>--%>

                           

                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Optional Subject Allotment" ValidationGroup="c" OnClick="BtnAdd_Click" />
                              
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

                                <h4>Student Optional Subject Allotment Details</h4>
                            </div>
                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                 <asp:GridView ID="gvdetails1" Cssclass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC"  EmptyDataText="No Records!" BorderStyle="None" DataKeyNames="OptionalId" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvdetails1_PageIndexChanging" PageSize="25" OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true">
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
                            <asp:BoundField DataField="SubjectName" HeaderText="Subject Name"  />
                            <asp:BoundField DataField="TeacherName" HeaderText="Teacher Name" />
                            <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                            <asp:BoundField DataField="StudentRollNo" HeaderText="RollNo" />
                            <asp:BoundField DataField="StudentAlloted" HeaderText="Student Alloted" />
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

