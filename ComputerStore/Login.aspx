<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ComputerStore.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 281px;
        }
        .auto-style12 {
            width: 151px;
            height: 30px;
        }
        .auto-style13 {
            width: 308px;
            height: 30px;
        }
        .auto-style14 {
            width: 308px;
            height: 23px;
        }
        .auto-style15 {
            height: 23px;
        }
        .auto-style16 {
            height: 48px;
        }
        .auto-style17 {
            width: 308px;
            height: 52px;
            text-align: right;
        }
        .auto-style18 {
            height: 52px;
            text-align: left;
            width: 151px;
        }
        .auto-style19 {
            width: 281px;
            height: 52px;
        }
        .auto-style20 {
            width: 308px;
            height: 50px;
            text-align: right;
        }
        .auto-style21 {
            height: 50px;
            text-align: left;
            width: 151px;
        }
        .auto-style22 {
            width: 281px;
            height: 50px;
        }
        .auto-style23 {
            width: 1044px;
            height: 30px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container2">
    <div class="header" style="color: #FFFFFF">
       <p style="color: #004080; font-family: 'Courier New', Courier, monospace; font-size: x-large; font-weight: 600; font-style: italic; font-variant: normal; text-transform: uppercase" class="auto-style16">
            &nbsp;</p>

      <br />
        </div>
    <div class="loginform">
        <center>
        <fieldset style="width:500px">

    <legend style="text-align: center; 
      letter-spacing: inherit; 
      font-family: 'Courier New', Courier, monospace; 
      font-size: x-large; color: #000000; 
      text-transform: capitalize; font-style: oblique; 
      text-decoration: none; 
      font-weight: 400; background-color: #FFFFFF; background-image: none; background-repeat: repeat;"
      width:"500px">Login Form</legend>
        <table>
            <tr>
                <td class="auto-style20">UserName:</td>
        

            <td class="auto-style21">
                <asp:TextBox ID="txtUser" runat="server" Width="160px" Height="26px"></asp:TextBox>
            </td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="Please Enter UserName." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
                </tr>

        
            <tr>
                <td class="auto-style17">Password:</td>
        

            <td class="auto-style18">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="160px" Height="26px"></asp:TextBox>
            </td>
            <td class="auto-style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Enter Password." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style12">
                        <asp:Button ID="txtLogin" runat="server" OnClick="txtLogin_Click" Text="Login" Width="80px" Height="30px" />
                    </td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="txtlog" runat="server"></asp:Label>
                        </td>
                    <td class="auto-style15" colspan="2">
                        <asp:Label ID="txtError" runat="server" AssociatedControlID="txtLogin"></asp:Label>
                    </td>
                </tr>
            </table>

          </fieldset>
        </center>
    </div>
</div>
</asp:Content>
