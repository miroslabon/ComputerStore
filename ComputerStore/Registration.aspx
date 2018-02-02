<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ComputerStore.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style4 {
            width: 113%;
            height: 341px;
        }
        .auto-style5 {
            height: 48px;
        }
        .auto-style6 {
            height: 50px;
        }
        .auto-style7 {
            width: 500px;
            height: 370px;
        }
        .auto-style8 {
            width: 100%;
            height: 296px;
            font-weight: normal;
            color: #000066;
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="registration">
        <center>
            
    <fieldset class="auto-style7">

    <legend style="text-align: center; 
      letter-spacing: inherit; 
      font-family: 'Courier New', Courier, monospace; 
      font-size: x-large; color: #000000; 
      text-transform: capitalize; font-style: oblique; 
      text-decoration: none; 
      font-weight: 400; table-layout: auto; background-color: #3399FF;"
      width:"500px">Registration Form</legend>

    <table class="auto-style8">
    <tr>
        <td class="auto-style27">User Name:</td>
        <td class="auto-style28">
            <asp:TextBox ID="txtUserName" runat="server" Width="180px" Height="23px"></asp:TextBox>
        </td>
        <td class="auto-style29" style="color: #FF0000">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="UserName is Required." ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style27">E-mail:</td>
        <td class="auto-style28">
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="180px" Height="23px"></asp:TextBox>
        </td>
        <td class="auto-style29" style="color: #FF0000">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Insert a E-mail."></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a Valid E-Mail." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style27">Password:</td>
        <td class="auto-style28">
            <asp:TextBox ID="txtPass1" runat="server" TextMode="Password" Width="180px" Height="24px"></asp:TextBox>
        </td>
        <td class="auto-style29" style="color: #FF0000">
            <asp:RequiredFieldValidator ID="txtPassword1" runat="server" ControlToValidate="txtPass1" ErrorMessage="Password is Required."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Confirm Password:</td>
        <td class="auto-style6">
            <asp:TextBox ID="txtConfPass" runat="server" Width="180px" Height="23px"></asp:TextBox>
        </td>
        <td class="auto-style6" style="color: #FF0000">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtConfPass" ErrorMessage="Bouth Passwords Must Match." ControlToCompare="txtPass1"></asp:CompareValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConfPass" ErrorMessage="Confirmation Password is Required."></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Country:</td>
        <td class="auto-style6">
            <asp:DropDownList ID="DropDownListCountry" runat="server" Width="180px">
                <asp:ListItem Selected="True">Select Country</asp:ListItem>
                <asp:ListItem>Austria</asp:ListItem>
                <asp:ListItem>Albania</asp:ListItem>
                <asp:ListItem>Argentina</asp:ListItem>
                <asp:ListItem>Armenia</asp:ListItem>
                <asp:ListItem>Azerbaijan</asp:ListItem>
                <asp:ListItem>Australia</asp:ListItem>
                <asp:ListItem>Belgium</asp:ListItem>
                <asp:ListItem>Brazil</asp:ListItem>
                <asp:ListItem>Bulgaria</asp:ListItem>
                <asp:ListItem>Canada</asp:ListItem>
                <asp:ListItem>Cuba</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>Colombia</asp:ListItem>
                <asp:ListItem>Croatia</asp:ListItem>
                <asp:ListItem>Estonia</asp:ListItem>
                <asp:ListItem>Ethiopia</asp:ListItem>
                <asp:ListItem>Germany</asp:ListItem>
                <asp:ListItem>Greece</asp:ListItem>
                <asp:ListItem>United Kingdom</asp:ListItem>
                <asp:ListItem>Ukraine</asp:ListItem>
                <asp:ListItem>United Arab Emirates</asp:ListItem>
                <asp:ListItem>Uruguay</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style6" style="color: #FF0000">
            <asp:RequiredFieldValidator ID="txtselcountry" runat="server" ControlToValidate="DropDownListCountry" ErrorMessage="Please Select Country." InitialValue="Select Country"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Gender:</td>
        <td class="auto-style6">
            <asp:DropDownList ID="DropDownListGender" runat="server" Width="180px">
                <asp:ListItem Selected="True">Select Gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style6" style="color: #FF0000">
            <asp:RequiredFieldValidator ID="txtselgen" runat="server" ControlToValidate="DropDownListGender" ErrorMessage="Please Select Gender." InitialValue="Select Gender"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style28">
            <asp:Button ID="txtbutton" runat="server" OnClick="Button1_Click" Text="Register" />
            </td>
        <td class="auto-style25">
            <input id="Reset1" class="auto-style20" type="reset" value="reset" /></td>
    </tr>
    <tr>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style28">
            <asp:Label ID="lblRegister" runat="server" ForeColor="#990033" Font-Size="Large"></asp:Label>
        </td>
        <td class="auto-style25">&nbsp;</td>
    </tr>
</table>
   </fieldset> 
            </center>
        </div>

</asp:Content>
