<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ComputerStore.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
.mySlides {display:none;}
</style>

    </asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div id="Datalist">
   <asp:DataList ID="dlCategory" runat="server" RepeatColumns="3" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" OnSelectedIndexChanged="dlCategory_SelectedIndexChanged1" Width="1193px">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <ItemStyle BackColor="White" ForeColor="#330099" />
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Images/"+Eval("IMAGE") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Name:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("NAME") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Price:
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("PRICE") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Products.aspx?ID="+Eval("ID") %>' Text="See Product"></asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SeparatorStyle BackColor="#3333CC" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" />
    </asp:DataList>
</div>
        <div class="w3-content" style="max-width:950px;">
  <img class="mySlides"  src="Images/Backgournd%20Images/p4.jpg" style="width: 100%"/>
  <img class="mySlides"  src="Images/Backgournd%20Images/pc.jpg" style="width: 100%"/>
  <img class="mySlides" src="Images/Backgournd%20Images/pc3.jpg" style="width:100%"/>

</div>
        
               <script>
                   var myIndex = 0;
                   carousel();

                   function carousel() {
                       var i;
                       var x = document.getElementsByClassName("mySlides");
                       for (i = 0; i < x.length; i++) {
                           x[i].style.display = "none";
                       }
                       myIndex++;
                       if (myIndex > x.length) { myIndex = 1 }
                       x[myIndex - 1].style.display = "block";
                       setTimeout(carousel, 2000);
                   }
            </script>


    </asp:Content>


