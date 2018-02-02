<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="ComputerStore.Admin_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style type="text/css">
        .auto-style4 {
            width: 869px;
            height: 30px;
        }
        .auto-style5 {
            height: 30px;
        }
        .auto-style15 {
            width: 424px;
            height: 5px;
        }
        .auto-style16 {
            height: 5px;
        }
        .auto-style17 {
            text-align: center;
            height: 5px;
        }
        .auto-style18 {
            width: 869px;
            height: 60px;
            font-weight: normal;
            color: #000066;
        }
        .auto-style19 {
            height: 60px;
        }
        .auto-style20 {
            width: 424px;
            height: 60px;
        }
        .auto-style21 {
            width: 869px;
            height: 59px;
            font-weight: normal;
            color: #000066;
        }
        .auto-style22 {
            height: 59px;
        }
        .auto-style23 {
            width: 424px;
            height: 59px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="container2">
    <br />
    <br />
    <br />
    <br />
 <div class="AdminLogin">

 <center>
      
        <fieldset style="width:500px">
        <legend style="text-align:center; background-color: #3399FF;">Admin Login Form</legend>
        <table class="auto-style1">
            <tr>
                <td class="auto-style18">Username</td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtUsername" runat="server" Height="22px" Width="174px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Password</td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtPass" runat="server" Height="22px" Width="173px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style22">
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" Width="74px" />
                </td>
                <td class="auto-style23"></td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17">
                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                    <asp:Label ID="Label2" runat="server" ></asp:Label>
                </td>
                <td class="auto-style15"></td>
            </tr>
        </table>

</fieldset>
</center>
</div>
</div>

</asp:Content>
