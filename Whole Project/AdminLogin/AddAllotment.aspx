<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="AddAllotment.aspx.cs" EnableEventValidation="false" Inherits="AdminLogin_AddAllotment" %>

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
                <h1>Teacher Class Section Subject Allotment</h1>
                <small>Enter Teacher Class Section Subject Allotment...</small>
                <br />
                
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Allotment Details</h4>
                             
                            </div>
                        </div>
                        
                        <div class="panel-body">
                            
                             <div class="form-group">
                                <label>Teacher Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddnteacher" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnteacher" ValidationGroup="c"  CssClass="form-control" runat="server"></asp:DropDownList>
                                
                            </div>
                           
                                
                             <div class="form-group">
                                <label>Class Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddnclass"  InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                              <asp:DropDownList ID="ddnclass" ValidationGroup="c"  CssClass="form-control" runat="server"></asp:DropDownList>
                              
                            </div>
                             <div class="form-group">
                                <label>Section Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddnsection"  InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                              <asp:DropDownList ID="ddnsection" ValidationGroup="c"  CssClass="form-control" runat="server"></asp:DropDownList>
                              
                            </div>
                              <div class="form-group">
                                <label>Subject Name</label>
                              <asp:DropDownList ID="ddnsubject" ValidationGroup="c"  CssClass="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddnsubject_SelectedIndexChanged"></asp:DropDownList>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddnsubject"  InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                            </div>
                              <div class="form-group">
                                <label>Sub Subject Name</label>
                              <asp:DropDownList ID="ddnsubsubject" ValidationGroup="c"  CssClass="form-control" runat="server"></asp:DropDownList>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddnsubsubject"  InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                            </div>

                             
                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Allotment" ValidationGroup="c" OnClick="BtnAdd_Click" />
                                <asp:Button ID="Btnupdate" CssClass="btn btn-add" runat="server" Text="Update Allotment" OnClick="Btnupdate_Click"  />
                                    <asp:Button ID="Btndel" CssClass="btn btn-add" runat="server" Text="Delete Allotment" OnClick="Btndel_Click"  />
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

                                <h4>Allotment Details</h4>
                            </div>
                              <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click"  />

                            </div>
                         
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView ID="gvdetails" Cssclass="table table-hover" runat="server" BackColor="White" BorderColor="#CCCCCC"  EmptyDataText="No Record!" BorderStyle="None" DataKeyNames="AllotmentId" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="25" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvdetails_SelectedIndexChanged" >
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                        <Columns>
                                                           <asp:TemplateField HeaderText = "S.No." ItemStyle-Width="100">
                                                <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                          </asp:TemplateField>
                    
                    <asp:BoundField DataField="Teacherid" HeaderText="Id" />
                    <asp:BoundField DataField="TeacherName" HeaderText="teacher  Name" /> 
                    
                   <asp:BoundField DataField="SubId" HeaderText="Id" /> 
                   <asp:BoundField DataField="SubSubjectName" HeaderText="Sub Subject Name" />
                    
                    <asp:BoundField DataField="ClassId" HeaderText="Id" />
                    <asp:BoundField DataField="ClassName" HeaderText="Class Name" />
                    
                    <asp:BoundField DataField="SectionId" HeaderText="Id" />
                    <asp:BoundField DataField="SectionName" HeaderText="Section Name" /> 
                    
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

