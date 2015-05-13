<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/backlayout.Master" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="Curier_Client_Portal.Dashboard.WebForm4" %>

<asp:Content ID="Content4" ContentPlaceHolderID="contentbody" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <br />
</asp:Content>

