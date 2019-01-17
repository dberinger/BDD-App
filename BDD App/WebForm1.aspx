<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BDD_App.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 234px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 234px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
            <br />
            <table style="width: 44%; height: 579px;">
                <tr>
                    <td class="auto-style1">StudentID</td>
                    <td class="auto-style2" colspan="2">
                        <asp:TextBox ID="txtBoxID" runat="server" MaxLength="6"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Name</td>
                    <td class="auto-style2" colspan="2">
                        <asp:TextBox ID="txtBoxName" runat="server" MaxLength="20"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Last name</td>
                    <td class="auto-style2" colspan="2">
                        <asp:TextBox ID="txtBoxLastName" runat="server" MaxLength="30"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Student No.</td>
                    <td class="auto-style2" colspan="2">
                        <asp:TextBox ID="txtBoxStudentNo" runat="server" MaxLength="6"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click1" Text="Insert" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                    </td>
                </tr>
            </table>
            <br />
        </div>
        
    </form>
</body>
</html>
