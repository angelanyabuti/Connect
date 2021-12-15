<%@ Page Title="" Language="C#" MasterPageFile="~/Connect.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="Connect.Department" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
        <asp:Label ID="Label1" runat="server" Text="Department ID"></asp:Label>
        <asp:TextBox ID="txtDid" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Department Name"></asp:Label>
    <asp:TextBox ID="txtDname" runat="server"></asp:TextBox>
    <br />
    <p>
        <asp:Label ID="Label3" runat="server" Text="Salary"></asp:Label>
        <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
        <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </p>
</asp:Content>
