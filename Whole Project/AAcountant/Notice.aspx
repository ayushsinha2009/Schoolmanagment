<%@ Page Title="" Language="C#" MasterPageFile="~/AAcountant/AMasterPage.master" AutoEventWireup="true" CodeFile="Notice.aspx.cs" Inherits="AAcountant_Notice" %>

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
                <h1>Notices</h1>
                <small>Notice Details..</small>
            </div>
        </section>
        <section class="content">
       
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Notice</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label>Date</label>
                             <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
                   
                            </div>
                            <div class="form-group">
                                <label>Topic</label>
                           <asp:Label ID="lbltopic" runat="server" Text="Label"></asp:Label>
                            </div>
                              
                             <div class="form-group">
                                <label>Notice</label>
                               <asp:Label ID="lblnotice" runat="server" Text="Label"></asp:Label>
                            </div>
                   
                         
                        </div>
                    </div>
                </div>

            </div>
  


        </section>

    </div>
</asp:Content>


