<%@ Page Title="" Language="C#" MasterPageFile="~/TTeacher/AMasterPage.master" AutoEventWireup="true" CodeFile="Curriculumn.aspx.cs" Inherits="AAcountant_Curriculumn" %>


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
                <h1>Curriculum</h1>
                <small>Curriculum Details..</small>
            </div>
        </section>
        <section class="content">
       
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel lobidisable panel-bd">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4>Curriculum</h4>
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
                                <label>Curriculum</label>
                               <asp:Label ID="lblcurriculumn" runat="server" Text="Label"></asp:Label>
                            </div>
                   
                         
                        </div>
                    </div>
                </div>

            </div>
  


        </section>

    </div>
</asp:Content>

