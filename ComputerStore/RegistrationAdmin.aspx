<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistrationAdmin.aspx.cs" Inherits="ComputerStore.RegistrationAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <table class="auto-style1">
    <tr>
        <td class="auto-style27">User Name:</td>
        <td class="auto-style28">
            <asp:TextBox ID="txtUserName" runat="server" Width="180px"></asp:TextBox>
        </td>
        <td class="auto-style29" style="color: #FF0000">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="UserName is Required." ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style27">Password:</td>
        <td class="auto-style28">
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
        </td>
        <td class="auto-style29" style="color: #FF0000">
            <asp:RequiredFieldValidator ID="txtPassword1" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is Required."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style27">&nbsp;</td>
        <td class="auto-style28">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td class="auto-style29" style="color: #FF0000">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
        </table>
</asp:Content>
