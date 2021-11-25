<%@ Page Title="" Language="C#" MasterPageFile="~/Connect.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Connect.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Registration"></asp:Label>
<p>
    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
    <asp:TextBox ID="txtFname" runat="server" ValidationGroup="vg"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="Enter your first name." ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
</p>
<p>
    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
    <asp:TextBox ID="txtLname" runat="server" ValidationGroup="vg"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Enter your last name." ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
</p>
<p>
    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" ValidationGroup="vg"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="This field can not be blank." ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vg">*</asp:RegularExpressionValidator>
</p>
<p>
    <asp:Label ID="Label10" runat="server" Text="Date of Birth"></asp:Label>
    <asp:TextBox ID="txtDbirth" runat="server" ValidationGroup="vg"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDbirth" ErrorMessage="Enter your date of birth." ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
</p>
<asp:Label ID="Label9" runat="server" Text="Username"></asp:Label>
<asp:TextBox ID="txtUname" runat="server" ValidationGroup="vg"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUname" ErrorMessage="Enter a username" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
<p>
    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" ValidationGroup="vg"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password should be between 6 to 8 characters" ForeColor="Red" MaximumValue="8" MinimumValue="6" ValidationGroup="vg">*</asp:RangeValidator>
</p>
<asp:Label ID="Label8" runat="server" Text="Confirm password"></asp:Label>
<asp:TextBox ID="txtCpassword" runat="server" ValidationGroup="vg"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCpassword" ErrorMessage="Confirm your password" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
<asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtCpassword" ErrorMessage="Password should range from 6 to 8 character" ForeColor="Red" MaximumValue="8" MinimumValue="6" ValidationGroup="vg">*</asp:RangeValidator>
<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtCpassword" ErrorMessage="Enter correct password" ForeColor="Red" ValidationGroup="vg">*</asp:CompareValidator>
<p>
    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
</p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="vg" />
    <p>
        &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
