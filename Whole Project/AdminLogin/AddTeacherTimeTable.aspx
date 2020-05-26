<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="AddTeacherTimeTable.aspx.cs" EnableEventValidation="false" Inherits="AdminLogin_AddTeacherTimeTable" %>
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
                <h1>Teacher Time Table</h1>
                <small>Enter Teacher Time Table...</small>
                <br />
                
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>TimeTable Details</h4>
                                <asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager>
                            </div>
                        </div>
                        
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Date</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdate"  ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtdate"  CssClass="form-control" runat="server" placeholder="Enter Date.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                 <asp:CalendarExtender ID="txtdate_CalendarExtender" ClearTime="true" runat="server" TargetControlID="txtdate" Format="dd/MM/yyyy"> </asp:CalendarExtender>
                            </div>
                           
                           
                          
                            

                           
                             <div class="form-group">
                                <label>Day</label><asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="ddnday"  InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
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
                            </div>
                            
                             <div class="form-group">
                                <label>Teacher Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddnteacher" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnteacher" ValidationGroup="c"  CssClass="form-control" runat="server"></asp:DropDownList>
                                
                            </div>
                           
                                <div class="form-group">
                                <label>Period</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddnperiod" InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                      <asp:DropDownList ID="ddnperiod" ValidationGroup="c"  CssClass="form-control" runat="server">
                                                        <asp:ListItem Value="0">Select</asp:ListItem>
                                                     <asp:ListItem Value="1">Ist Period</asp:ListItem>
                                                    <asp:ListItem Value="2">IInd Period</asp:ListItem>
                                                     <asp:ListItem Value="3">IIIrd Period</asp:ListItem>
                                                    <asp:ListItem Value="4">IVth Period</asp:ListItem>
                                                    <asp:ListItem Value="5">Vth Period</asp:ListItem>
                                                    <asp:ListItem Value="6">VIth Period</asp:ListItem>
                                                    <asp:ListItem Value="7">VIIth Period</asp:ListItem>
                                                    <asp:ListItem Value="8">VIIIth Period</asp:ListItem>
                                                     </asp:DropDownList>
                                

                            </div>
                              <div class="form-group">
                                <label>Period Starts From</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtfrom"  ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtfrom" CssClass="form-control" runat="server" placeholder="Starts From.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                

                            </div>
                                                          <div class="form-group">
                                <label>Period Ends</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txttill"  ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txttill" CssClass="form-control" runat="server" placeholder="End  Till.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                

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
                                <label>Sub Subject Name</label>
                              <asp:DropDownList ID="ddnsubsubject" ValidationGroup="c"  CssClass="form-control" runat="server"></asp:DropDownList>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddnsubsubject"  InitialValue="0" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                            </div>

                              <div class="form-group">
                                <label>Description</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtdesc" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                              <asp:TextBox ID="txtdesc" CssClass="form-control" TextMode="MultiLine" runat="server" placeholder="Description.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                              
                            </div>
                             
                            <div class="form-group">
                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Teacher Time Table" ValidationGroup="c" OnClick="BtnAdd_Click" />
                                <asp:Button ID="Btnupdate" CssClass="btn btn-add" runat="server" Text="Update Teacher Time Table" OnClick="Btnupdate_Click"  />
                                    <asp:Button ID="Btndel" CssClass="btn btn-add" runat="server" Text="Delete Teacher Time Table" OnClick="Btndel_Click"  />
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

                                <h4>Time Table Details</h4>
                            </div>
                              <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                         
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                                           <asp:GridView ID="gvdetails" CssClass="table table-bordered table-striped table-hover" runat="server" EmptyDataText="No Record!" DataKeyNames="TimeTableId" AutoGenerateColumns="False" AllowPaging="True" AutoGenerateSelectButton="True" OnPageIndexChanging="gvdetails_PageIndexChanging" OnSelectedIndexChanged="gvdetails_SelectedIndexChanged">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <Columns>
                                                                                                    <asp:TemplateField HeaderText = "S.No." ItemStyle-Width="100">
                                                <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                          </asp:TemplateField>
                    
                    <asp:BoundField DataField="Date" HeaderText="Date" /> 
                    <asp:BoundField DataField="Day" HeaderText="Day" /> 
                    <asp:BoundField DataField="Tperiod" HeaderText="Period" />
                    <asp:BoundField DataField="TFrom" HeaderText="From" />
                    <asp:BoundField DataField="Till" HeaderText="Till" />
                    <asp:BoundField DataField="teacherid" HeaderText="Id" /> 
                    <asp:BoundField DataField="TeacherName" HeaderText="Teacher Name" />
                    <asp:BoundField DataField="SubSubjectId" HeaderText="Sub Id" />
                    <asp:BoundField DataField="SubSubjectName" HeaderText="Sub Subject Name" />
                    <asp:BoundField DataField="ClassId" HeaderText="Id" />
                    <asp:BoundField DataField="ClassName" HeaderText="Class Name" />
                    <asp:BoundField DataField="SectionId" HeaderText="Id" />
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

