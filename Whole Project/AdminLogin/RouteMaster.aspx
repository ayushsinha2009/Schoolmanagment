<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="RouteMaster.aspx.cs" EnableEventValidation="false" Inherits="AdminLogin_RouteMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScrptMngr1" runat="server"></asp:ScriptManager>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="header-icon">
                <i class="fa fa-book"></i>
            </div>
            <div class="header-title">
                <h1>Route Master</h1>
                <small>Enter details of route details here..</small>
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Route Details</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Vehicle License No.</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddnvehicleno" ErrorMessage="*" InitialValue="0" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnvehicleno" ValidationGroup="c" CssClass="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddnvehicleno_SelectedIndexChanged"></asp:DropDownList>
                                

                            </div>
                            <div class="form-group">
                                <label>Vehicle Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddnvehiclename" ErrorMessage="*" InitialValue="0" ValidationGroup="c"></asp:RequiredFieldValidator>
                               ;<asp:DropDownList ID="ddnvehiclename" ValidationGroup="c" CssClass="form-control" runat="server"></asp:DropDownList>
                                

                            </div>
                            <div class="form-group">
                                <label>Route From</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtroutefrom" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtroutefrom"  CssClass="form-control" AutoPostBack="true" runat="server" placeholder="Route From.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                

                            </div>
                             <div class="form-group">
                                <label>Route To</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtrouteto" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtrouteto"  CssClass="form-control" runat="server" placeholder="Route To.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                

                            </div>
                           

                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Route Details" ValidationGroup="c" OnClick="BtnAdd_Click" />
                                <asp:Button ID="Btnupdate" CssClass="btn btn-add" runat="server" Text="Update Route Details" OnClick="Btnupdate_Click"  />
                                <asp:Button ID="Btndel" CssClass="btn btn-add" runat="server" Text="Delete Route Details" OnClick="Btndel_Click" />
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

                                <h4>Route Master Details</h4>
                            </div>
                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView ID="gvdetails" CssClass="table table-bordered table-striped table-hover" runat="server" EmptyDataText="No Record!" AutoGenerateColumns="False" DataKeyNames="routeid" AllowPaging="True" OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="25" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvdetails_SelectedIndexChanged">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                              <Columns>
                                                            <asp:TemplateField HeaderText = "S.No." ItemStyle-Width="100">
                                                <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                          </asp:TemplateField>
                    <asp:BoundField DataField="VehicleId" HeaderText="Id" /> 
                    <asp:BoundField DataField="VehicleType" HeaderText="Vehicle Name" /> 
                    <asp:BoundField DataField="VehicleNo" HeaderText="Vehicle License No" /> 
                    <asp:BoundField DataField="DriverName" HeaderText="Driver Name" /> 
                    <asp:BoundField DataField="ConductorName" HeaderText="Conductor Name" /> 
                    <asp:BoundField DataField="RouteFrom" HeaderText="Route From" />
                    <asp:BoundField DataField="RouteTo" HeaderText="Route To" /> 
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

