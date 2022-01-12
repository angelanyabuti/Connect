<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Connect.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
    <asp:TextBox ID="txtID" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtID" ErrorMessage="Enter your ID" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtfname" ErrorMessage="Enter your first name" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLname" ErrorMessage="Enetr your last name" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter your email" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter the email correctly" ForeColor="Red" ValidationGroup="vg">*</asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Date of Birth"></asp:Label>
    <asp:TextBox ID="txtDbirth" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDbirth" ErrorMessage="Enter your date of birth" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label6" runat="server" Text="User Name"></asp:Label>
    <asp:TextBox ID="txtUname" runat="server" style="margin-top: 0px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtUname" ErrorMessage="Enter your username" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter your password" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password should be between 6 to 8 characters." ForeColor="Red" MaximumValue="8" MinimumValue="0" ValidationGroup="vg">*</asp:RangeValidator>
    <br />
    <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label>
    <asp:TextBox ID="txtCpassword" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCpassword" ErrorMessage="Confirm your password" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtCpassword" ErrorMessage="Password should be between 6 to 8 characters." ForeColor="Red" MaximumValue="8" MinimumValue="0" ValidationGroup="vg">*</asp:RangeValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtCpassword" ErrorMessage="Enter the password you entered above" ForeColor="Red" ValidationGroup="vg">*</asp:CompareValidator>
<br />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="vg" />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Register" ValidationGroup="vg" />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
