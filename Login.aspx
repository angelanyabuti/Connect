<%@ Page Title="" Language="C#" MasterPageFile="~/Connect.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Connect.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Employee.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
   
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel2" runat="server" Height="271px" HorizontalAlign="Center" style="margin-left: 365px" Width="585px">
        <br />
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        <br />
        <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUname" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="vg" />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" ValidationGroup="vg" />
        <br />
        <br />
    </asp:Panel>
    <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/EmployeeDetails.aspx">
    </asp:Login>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
