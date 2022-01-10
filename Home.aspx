<%@ Page Title="" Language="C#" MasterPageFile="~/Connect.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Connect.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="Employee.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
</p>
    <br />
<asp:Panel ID="Panel1" runat="server" Height="435px" HorizontalAlign="Center" style="margin-top: 0px; margin-left: 380px;" BackColor="White" BorderColor="Black" BorderStyle="Solid" Width="577px">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Employee Management System"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="C:\Users\Angela\OneDrive\Desktop\Connect\Connect\e3.jpg" Width="128px" />
    <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" style="margin-top: 0px" Text="Admin" Width="134px" />
    <br />
    <br />
</asp:Panel>
</asp:Content>
