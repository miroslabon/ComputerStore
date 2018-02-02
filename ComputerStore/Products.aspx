<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="ComputerStore.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 701px;
        }
        .auto-style12 {
            text-align: center;
            width: 701px;
        }
        .auto-style13 {
            text-align: center;
            width: 701px;
            height: 23px;
        }
        .auto-style14 {
            height: 23px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="container2">

        <asp:DataList ID="dlProduct" runat="server" OnSelectedIndexChanged="dlProduct_SelectedIndexChanged" RepeatColumns="1">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <asp:Image ID="Image1" runat="server" Height="400px" ImageUrl='<%# "Images/"+Eval("IMAGE") %>' Width="400px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style12">Name: </td>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("NAME") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Price: </td>
                        <td class="auto-style14">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("PRICE") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Description:</td>
                        <td class="auto-style14">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("DESCRIPTION") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Button ID="btnAddtocart" runat="server" OnClick="btnAddtocart_Click" Text="Add to Cart" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </div>
</asp:Content>
