<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="ComputerStore.Contact_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
     <div id="contact" style="font-family:Arial" class="auto-style4">
         <table>

         </table>
        <fieldset>
            <legend style="text-align: center; letter-spacing: inherit;">Contact Us</legend>
            <table align="center">
                <tr>
                    <td>
                        <b>Name:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" Width="300px" runat="server" BorderStyle="None" Height="23px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ErrorMessage="Name is Required"
                            ControlToValidate="txtName"
                            Text="*"
                            Display="Dynamic"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Email:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" Width="300px" runat="server" BorderStyle="None" Height="23px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ErrorMessage="Email is Required"
                            ControlToValidate="txtEmail"
                            Text="*"
                            Display="Dynamic"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator
                            ID="RegularExpressionValidator1"
                            runat="server"
                            ErrorMessage="Please enter a valid Email"
                            ControlToValidate="txtEmail"
                            Text="*"
                            ForeColor="Red"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                        </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Subject:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSubject" Width="300px" runat="server" BorderStyle="None" Height="23px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ErrorMessage="Subject is Required"
                            ControlToValidate="txtSubject"
                            Text="*"
                            Display="Dynamic"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top">
                        <b>Comments:</b>
                    </td>
                    <td style="vertical-align: top">

                        <asp:TextBox ID="txtComments" Width="300px" runat="server" TextMode="MultiLine" Height="72px" BorderStyle="None"></asp:TextBox>
                    </td>
                    <td style="vertical-align: top" class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ErrorMessage="Comments are Required"
                            ControlToValidate="txtComments"
                            Text="*"
                            Display="Dynamic"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:ValidationSummary HeaderText="Please correct the following errors:" ForeColor="Red" ID="ValidationSummary1" runat="server" DisplayMode="List" BorderStyle="None" />
                    </td>
                </tr>

                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button1"
                            runat="server" 
                            Text="Submit"
                            OnClick="Button1_Click"
                            BackColor="#666699" BorderColor="White" Height="28px" Width="67px"
                            BorderWidth="0px" Font-Size="Medium"
                            ForeColor="Blue" Font-Names="Courier New" />
                        <asp:Label ID="Label1" runat="server" color="darkred" Font-Bold="True"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td colspan="3" style="list-style-type: circle">
                        OR</td>
                </tr>

                <tr>
                    <td colspan="3" class="auto-style1">
                        Phone: 21025463068<br />
                    </td>
                </tr>

                <tr>
                    <td colspan="3">
                        Address: 56 High Rd, London N2 9PN</td>
                </tr>

                <tr>
                    <td colspan="3">
                        London</td>
                </tr>
            </table>
        </fieldset>
    </div>

     <div id="map">
       <br />
        <br />
    <script>
       
        function initMap() {
            var uluru = { lat: 51.582509, lng: -0.210465 };
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 15,
                center: uluru
            });
            var marker = new google.maps.Marker({
                position: uluru,
                map: map
            });
        }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key= AIzaSyBZlUcgNSVJdpHr75kKRR2_0sDmXtWWp08&callback=initMap">
    </script> 
    </div>

</div>

</asp:Content>

