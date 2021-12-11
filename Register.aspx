<%@ Page Title="" Language="C#" MasterPageFile="~/Connect.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Connect.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label8" runat="server" Text="ID"></asp:Label>
    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="Enter your first name." ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Enter your last name" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter your email" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter the correct email." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vg">*</asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Date of Birth"></asp:Label>
    <asp:TextBox ID="txtDbirth" runat="server"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDbirth" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
   
   
    <asp:Label ID="Label5" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUname" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Confirm password"></asp:Label>
    <asp:TextBox ID="txtCPassword" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCPassword" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtCPassword" ErrorMessage="Enter the correct password" ForeColor="Red" ValidationGroup="vg">*</asp:CompareValidator>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="vg" />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Register" ValidationGroup="vg" OnClick="Button1_Click" />
    <br />
</asp:Content>
