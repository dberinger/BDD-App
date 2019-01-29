<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BDD_App.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
            <br />
            <table class="auto-style4">
                <tr>
                    <td class="auto-style13">StudentID</td>
                    <td class="auto-style2" colspan="2">
                        <asp:TextBox ID="txtBoxID" runat="server" MaxLength="6"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RangeValidator ID="idRange" runat="server" ControlToValidate="txtBoxID" ErrorMessage="Enter a valid ID between 1 and 999" MaximumValue="999" MinimumValue="1" Type="Integer" ValidationGroup="Update"></asp:RangeValidator>
                        <asp:RangeValidator ID="idRange0" runat="server" ControlToValidate="txtBoxID" ErrorMessage="Enter a valid ID between 1 and 999" MaximumValue="999" MinimumValue="1" Type="Integer" ValidationGroup="Delete"></asp:RangeValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="idRequired" runat="server" ControlToValidate="txtBoxID" ErrorMessage="ID number is required" ValidationGroup="Update"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="idRequired0" runat="server" ControlToValidate="txtBoxID" ErrorMessage="ID number is required" ValidationGroup="Delete"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Name</td>
                    <td class="auto-style2" colspan="2">
                        <asp:TextBox ID="txtBoxName" runat="server" MaxLength="20"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RegularExpressionValidator ID="nameValidator" runat="server" ControlToValidate="txtBoxName" ErrorMessage="Enter a valid name" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ValidationGroup="Update"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="nameRequired" runat="server" ControlToValidate="txtBoxName" ErrorMessage="Name is required" ValidationGroup="Update"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="nameValidator0" runat="server" ControlToValidate="txtBoxName" ErrorMessage="Enter a valid name" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ValidationGroup="Insert"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="nameRequired0" runat="server" ControlToValidate="txtBoxName" ErrorMessage="Name is required" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Last name</td>
                    <td class="auto-style2" colspan="2">
                        <asp:TextBox ID="txtBoxLastName" runat="server" MaxLength="30"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RegularExpressionValidator ID="lastNameValidator" runat="server" ControlToValidate="txtBoxLastName" ErrorMessage="Enter a valid last name" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ValidationGroup="Update"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="lastNameRequired" runat="server" ControlToValidate="txtBoxLastName" ErrorMessage="Last name is required" ValidationGroup="Update"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="lastNameValidator0" runat="server" ControlToValidate="txtBoxLastName" ErrorMessage="Enter a valid last name" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ValidationGroup="Insert"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="lastNameRequired0" runat="server" ControlToValidate="txtBoxLastName" ErrorMessage="Last name is required" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Student No.</td>
                    <td class="auto-style15" colspan="2">
                        <asp:TextBox ID="txtBoxStudentNo" runat="server" MaxLength="6"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:RangeValidator ID="studentNoRange" runat="server" ControlToValidate="txtBoxStudentNo" ErrorMessage="Enter a valid index between 10K and 999K " MaximumValue="999999" MinimumValue="10000" Type="Integer" ValidationGroup="Update"></asp:RangeValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="studentNoRequired" runat="server" ControlToValidate="txtBoxStudentNo" ErrorMessage="Student No. is required" ValidationGroup="Update"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="studentNoRange0" runat="server" ControlToValidate="txtBoxStudentNo" ErrorMessage="Enter a valid index between 10K and 999K " MaximumValue="999999" MinimumValue="10000" Type="Integer" ValidationGroup="Insert"></asp:RangeValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="studentNoRequired0" runat="server" ControlToValidate="txtBoxStudentNo" ErrorMessage="Student No. is required" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click1" Text="Insert" ValidationGroup="Insert" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" ValidationGroup="Update" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" ValidationGroup="Delete" />
                    </td>
                    <td class="auto-style11">
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
        
    </form>
</body>
</html>
