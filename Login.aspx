<%@ Page Title="" Language="C#" MasterPageFile="~/Connect.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Connect.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUname" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="vg" />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Login" ValidationGroup="vg" />
    <br />
</asp:Content>
