<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/backlayout.Master" AutoEventWireup="true" CodeBehind="uploadorder.aspx.cs" Inherits="Curier_Client_Portal.Dashboard.WebForm2" %>

<asp:Content ID="Content4" ContentPlaceHolderID="contentbody" runat="server">

        <div class="container">
        <div class="grid">
            <div class="row">

                <div class="panel">
                    <div class="panel-header">
                        Upload Package File
                    </div>
                    <div class="panel-content">
                        
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Button ID="uploadexcel" runat="server" Text="Upload" />
                        <br/><br/>
              Note : Only Excel file format currently support the system. other files upload may not detect from the system

                    </div>
                </div>

            </div>
        </div>
    </div>



</asp:Content>
