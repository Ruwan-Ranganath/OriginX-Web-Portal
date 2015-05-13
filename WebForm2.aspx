<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Curier_Client_Portal.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="courierClient" ForeColor="#333333" GridLines="None" Width="471px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="delfrom" HeaderText="delfrom" SortExpression="delfrom" />
                <asp:BoundField DataField="deladd1" HeaderText="deladd1" SortExpression="deladd1" />
                <asp:BoundField DataField="deladd2" HeaderText="deladd2" SortExpression="deladd2" />
                <asp:BoundField DataField="del3add3" HeaderText="del3add3" SortExpression="del3add3" />
                <asp:BoundField DataField="delcity" HeaderText="delcity" SortExpression="delcity" />
                <asp:BoundField DataField="delmob" HeaderText="delmob" SortExpression="delmob" />
                <asp:BoundField DataField="delto" HeaderText="delto" SortExpression="delto" />
                <asp:BoundField DataField="toadd1" HeaderText="toadd1" SortExpression="toadd1" />
                <asp:BoundField DataField="toadd2" HeaderText="toadd2" SortExpression="toadd2" />
                <asp:BoundField DataField="toadd3" HeaderText="toadd3" SortExpression="toadd3" />
                <asp:BoundField DataField="tocity" HeaderText="tocity" SortExpression="tocity" />
                <asp:BoundField DataField="tomob" HeaderText="tomob" SortExpression="tomob" />
                <asp:BoundField DataField="deldescript" HeaderText="deldescript" SortExpression="deldescript" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="courierClient" runat="server" ConnectionString="<%$ ConnectionStrings:NdexpressConnectionString %>" SelectCommand="SELECT * FROM [deliveries]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
