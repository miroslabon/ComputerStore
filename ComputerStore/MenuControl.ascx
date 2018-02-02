<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuControl.ascx.cs" Inherits="ComputerStore.MenuControl" %>
<asp:DataList ID="dlMenu" runat="server" OnSelectedIndexChanged="dlMenu_SelectedIndexChanged" Width="100%" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" RepeatDirection="Horizontal">
    <AlternatingItemStyle BackColor="PaleGoldenrod" />
    <FooterStyle BackColor="Tan" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Default.aspx?IDCAT="+Eval("ID") %>' Text='<%# Eval("NAME") %>'></asp:HyperLink>
    </ItemTemplate>
    <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
</asp:DataList>

