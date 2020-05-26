<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="VehicleMaster.aspx.cs" EnableEventValidation="false" Inherits="AdminLogin_VehicleMaster" %>

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
                <h1>Vehicle Master</h1>
                <small>Enter details of Vehicle here..</small>
            </div>
        </section>
        <section class="content">

            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Vehicle Details</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Vehicle Type</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddnvehicletype" ErrorMessage="*" InitialValue="0" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="ddnvehicletype" ValidationGroup="c" CssClass="form-control" runat="server">
                                                     <asp:ListItem Value="0">Select</asp:ListItem>
                                                     <asp:ListItem Value="1">Bus</asp:ListItem>
                                                    <asp:ListItem Value="2">Rickshaw</asp:ListItem>
                                                     <asp:ListItem Value="3">Van</asp:ListItem>
                                                    </asp:DropDownList>
                               

                            </div>
                            <div class="form-group">
                                <label>License No.</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtvehicleno" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtvehicleno"  CssClass="form-control" runat="server" placeholder="License No.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                

                            </div>
                            <div class="form-group">
                                <label>Driver Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdriver" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtdriver"  CssClass="form-control" AutoPostBack="true" runat="server" placeholder="Driver Name.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                

                            </div>
                             <div class="form-group">
                                <label>Conductor Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtconductor" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtconductor"  CssClass="form-control" runat="server" placeholder="Conductor Name.." autocomplete="off" ValidationGroup="c"></asp:TextBox>
                                

                            </div>

                            <div class="form-group">
                                <label>Driver Aadhar card no</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaadhar" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtaadhar"  CssClass="form-control" runat="server" placeholder="Aadhar card no..." autocomplete="off" ValidationGroup="c" ></asp:TextBox>
                                

                            </div>

                            
                            <div class="form-group">
                                <label>Conductor Aadhar card no</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtaadhar1" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtaadhar1"  CssClass="form-control" runat="server" placeholder="Aadhar card no..." autocomplete="off" ValidationGroup="c" ></asp:TextBox>
                                

                            </div>

                              <div class="form-group">
                                <label>Vehicle Description.</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtdesc" ErrorMessage="*" ValidationGroup="c"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtdesc"  CssClass="form-control" runat="server" TextMode="MultiLine" placeholder="Description..." autocomplete="off" ValidationGroup="c" ></asp:TextBox>
                                

                            </div>

                            <div class="form-group">


                                <asp:Button ID="BtnAdd" CssClass="btn btn-add" runat="server" Text="Add Vehicle Details" ValidationGroup="c" OnClick="BtnAdd_Click" />
                                <asp:Button ID="Btnupdate" CssClass="btn btn-add" runat="server" Text="Update Vehicle Details" OnClick="Btnupdate_Click"  />
                                <asp:Button ID="Btndel" CssClass="btn btn-add" runat="server" Text="Delete Vehicle Details" OnClick="Btndel_Click" />
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

                                <h4>Vehicle Master Details</h4>
                            </div>
                            <div style="float: right;">
                                <asp:Button ID="btnexcel" CssClass="btn btn-add" runat="server" Text="Export To Excel" OnClick="btnexcel_Click" />

                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView ID="gvdetails" CssClass="table table-bordered table-striped table-hover" runat="server" EmptyDataText="No Record!" AutoGenerateColumns="False" DataKeyNames="VehicleId" AllowPaging="True" OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="25" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvdetails_SelectedIndexChanged">
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText = "S.No." ItemStyle-Width="100">
                                                <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                          </asp:TemplateField>
                    <asp:BoundField DataField="VehicleType" HeaderText="Vehicle Type" /> 
                    <asp:BoundField DataField="VehicleNo" HeaderText="License No" /> 
                    <asp:BoundField DataField="DriverName" HeaderText="Driver Name" /> 
                    <asp:BoundField DataField="ConductorName" HeaderText="Conductor Name" /> 
                    <asp:BoundField DataField="DriverAadharNo" HeaderText="Driver Aadhar No" />
                    <asp:BoundField DataField="ConductorAadharNo" HeaderText="Conductor Aadhar No" />
                    <asp:BoundField DataField="VehicleDesc" HeaderText="Vehicle Desc" /> 
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

