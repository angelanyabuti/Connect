<%@ Page Title="" Language="C#" MasterPageFile="~/Connect.Master" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="Connect.EmployeeDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p>
    &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:Label ID="Label7" runat="server" Text="Employee ID"></asp:Label>
<asp:TextBox ID="txtEid" runat="server"></asp:TextBox>
    <p>
    <asp:Label ID="Label1" runat="server" Text="Full names"></asp:Label>
    <asp:TextBox ID="txtFnames" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label3" runat="server" Text="Mobile number"></asp:Label>
    <asp:TextBox ID="txtEnumber" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label5" runat="server" Text="Date of Join"></asp:Label>
    <asp:TextBox ID="txtDjoin" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label6" runat="server" Text="Department"></asp:Label>
    <asp:TextBox ID="txtDep" runat="server"></asp:TextBox>
</p>
    <p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" onClientClick="return confirm('are you sure you want to delete?');" Text="Delete" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Search" />
</p>
    <p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
</p>

<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
