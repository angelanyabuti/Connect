<%@ Page Title="" Language="C#" MasterPageFile="~/Connect.Master" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="Connect.EmployeeDetails" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Employee.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>

    &nbsp;</p>
    <p>
        &nbsp;</p>
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="342px" Width="536px" BackColor="White" HorizontalAlign="Center" style="margin-left: 368px" >
        <asp:Label ID="Label7" runat="server" Text="Employee ID"></asp:Label>
        <br />
        <asp:TextBox ID="txtEid" runat="server" Width="164px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEid" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Full names"></asp:Label>
        <br />
        <asp:TextBox ID="txtFnames" runat="server" Width="164px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFnames" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
        <br />
        <asp:TextBox ID="txtEmail" runat="server" Width="170px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter the email correctlynValidator" ForeColor="Red" ValidationExpression="vg">*</asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Mobile number"></asp:Label>
        <br />
        <asp:TextBox ID="txtEnumber" runat="server" Width="172px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEnumber" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
        <br />
        <asp:TextBox ID="txtAddress" runat="server" Width="168px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Date of Join"></asp:Label>
        <br />
        <asp:TextBox ID="txtDjoin" runat="server" Width="170px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDjoin" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Department"></asp:Label>
        <br />
        <asp:TextBox ID="txtDep" runat="server" Width="169px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDep" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
        <br />
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel2" runat="server" Width="534px" HorizontalAlign="Center" BackColor="White" Height="427px" style="margin-left: 370px; margin-right: 0px; margin-top: 46px">
        <asp:Label ID="Label9" runat="server" Text="Basic salary"></asp:Label>
        <br />
        <asp:TextBox ID="txtBsalary" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtBsalary" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Tax"></asp:Label>
        <br />
        <asp:TextBox ID="txtTax" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Net pay"></asp:Label>
        <br />
        <asp:TextBox ID="txtNpay" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblgpay" runat="server" Text="Gross pay"></asp:Label>
        <br />
        <asp:TextBox ID="txtGpay" runat="server" OnTextChanged="txtGpay_TextChanged"></asp:TextBox>
        <br />
        <asp:Label ID="Label13" runat="server" Text="Deductions"></asp:Label>
        <br />
        <asp:TextBox ID="txtDeductions" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label15" runat="server" Text="Overtime"></asp:Label>
        <br />
        <asp:TextBox ID="txtOtime" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtOtime" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label14" runat="server" Text="Pay Date"></asp:Label>
        <br />
        <asp:TextBox ID="txtPdate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtPdate" ErrorMessage="This field is required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Total" ValidationGroup="vg" />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="vg" />
        <br />
        <br />
        <br />
    </asp:Panel>
    <br />
    <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White">
        </asp:GridView>
    <br />
<asp:Panel ID="Panel3" runat="server" BackColor="White" HorizontalAlign="Center" style="margin-left: 371px" Width="549px">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" ValidationGroup="vg" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" onClientClick="return confirm('are you sure you want to delete?');" Text="Delete" />
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Search" />
    <asp:Button ID="Button7" runat="server" OnClick="Button7_click" Text="Clear" />
    <asp:Button ID="Button6" runat="server" OnClick="Button6_click" Text="Logout" />
</asp:Panel>
    <br />
    <p>
        &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
