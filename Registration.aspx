<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Connect.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
    <asp:TextBox ID="txtID" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Date of Birth"></asp:Label>
    <asp:TextBox ID="txtDbirth" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="User Name"></asp:Label>
    <asp:TextBox ID="txtUname" runat="server" style="margin-top: 0px"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label>
    <asp:TextBox ID="txtCpassword" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
