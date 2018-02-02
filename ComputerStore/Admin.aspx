<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ComputerStore.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <br />

            <asp:Label ID="LabelUser" runat="server"></asp:Label>
            <br />

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="1020px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                    <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
                    <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" SortExpression="DESCRIPTION" />
                    <asp:BoundField DataField="IDCAT" HeaderText="IDCAT" SortExpression="IDCAT" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConnection %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>

        </div>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" placeholder="ID.." runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox3" placeholder="Name.." runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox2" placeholder="Description.." runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox4" placeholder="Price.." runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ID" DataValueField="ID" Height="16px" Width="132px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
    </asp:DropDownList>
        <br />
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" Width="201px" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Log Out" OnClick="Button2_Click" />

</asp:Content>
