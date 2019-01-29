<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BDD_App.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta lang="en" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Students database</title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <%-- HEADING --%>
    <header>
        <h1>Students Database</h1>
        <p>Daniel Beringer, 45289</p>
    </header>

    <form id="form1" runat="server">
        <%-- GRID VIEW WITH STUDENTS TABLE --%>
        <section id="studsTbl">
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </section>
        <%-- SUCCESS/ERROR MESSAGE --%>
        <div class="alert">
            <asp:Label ID="lbl" runat="server"></asp:Label>
        </div>
        <%-- INPUTS TO MODIFY STUDENTS TABLE --%>
        <div id="flex-container">
            <%-- STUDENT ID --%>
            <div class="item">
                <div class="inputCombo">
                    <div class="lbl">
                        <label for="txtBoxID">Student ID</label>
                    </div>
                    <asp:TextBox ID="txtBoxID" runat="server" MaxLength="6"></asp:TextBox>
                </div>
                <div class="message">
                    <asp:RangeValidator ID="idRange" runat="server" ControlToValidate="txtBoxID" ErrorMessage="Enter a valid ID between 1 and 999" MaximumValue="999" MinimumValue="1" Type="Integer" ValidationGroup="Update"></asp:RangeValidator>
                    <asp:RangeValidator ID="idRange0" runat="server" ControlToValidate="txtBoxID" ErrorMessage="Enter a valid ID between 1 and 999" MaximumValue="999" MinimumValue="1" Type="Integer" ValidationGroup="Delete"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="idRequired" runat="server" ControlToValidate="txtBoxID" ErrorMessage="ID number is required" ValidationGroup="Update"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="idRequired0" runat="server" ControlToValidate="txtBoxID" ErrorMessage="ID number is required" ValidationGroup="Delete"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%-- NAME --%>
            <div class="item">
                <div class="inputCombo">
                    <div class="lbl">
                        <label for="txtBoxName">Name</label>
                    </div>
                    <asp:TextBox ID="txtBoxName" runat="server" MaxLength="20"></asp:TextBox>
                </div>
                <div class="message">
                    <asp:RegularExpressionValidator ID="nameValidator" runat="server" ControlToValidate="txtBoxName" ErrorMessage="Enter a valid name" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ValidationGroup="Update"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="nameRequired" runat="server" ControlToValidate="txtBoxName" ErrorMessage="Name is required" ValidationGroup="Update"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="nameValidator0" runat="server" ControlToValidate="txtBoxName" ErrorMessage="Enter a valid name" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ValidationGroup="Insert"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="nameRequired0" runat="server" ControlToValidate="txtBoxName" ErrorMessage="Name is required" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%-- LAST NAME --%>
            <div class="item">
                <div class="inputCombo">
                    <div class="lbl">
                        <label for="txtBoxLastName">Last name</label>
                    </div>
                    <asp:TextBox ID="txtBoxLastName" runat="server" MaxLength="30"></asp:TextBox>
                </div>
                <div class="message">
                    <asp:RegularExpressionValidator ID="lastNameValidator" runat="server" ControlToValidate="txtBoxLastName" ErrorMessage="Enter a valid last name" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ValidationGroup="Update"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="lastNameRequired" runat="server" ControlToValidate="txtBoxLastName" ErrorMessage="Last name is required" ValidationGroup="Update"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="lastNameValidator0" runat="server" ControlToValidate="txtBoxLastName" ErrorMessage="Enter a valid last name" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ValidationGroup="Insert"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="lastNameRequired0" runat="server" ControlToValidate="txtBoxLastName" ErrorMessage="Last name is required" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%-- STUDENT NO. --%>
            <div class="item">
                <div class="inputCombo">
                    <div class="lbl">
                        <label for="txtBoxStudentNo">Student No.</label>
                    </div>
                    <asp:TextBox ID="txtBoxStudentNo" runat="server" MaxLength="6"></asp:TextBox>
                </div>
                <div class="message">
                    <asp:RangeValidator ID="studentNoRange" runat="server" ControlToValidate="txtBoxStudentNo" ErrorMessage="Enter a valid index between 10K and 999K " MaximumValue="999999" MinimumValue="10000" Type="Integer" ValidationGroup="Update"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="studentNoRequired" runat="server" ControlToValidate="txtBoxStudentNo" ErrorMessage="Student No. is required" ValidationGroup="Update"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="studentNoRange0" runat="server" ControlToValidate="txtBoxStudentNo" ErrorMessage="Enter a valid index between 10K and 999K " MaximumValue="999999" MinimumValue="10000" Type="Integer" ValidationGroup="Insert"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="studentNoRequired0" runat="server" ControlToValidate="txtBoxStudentNo" ErrorMessage="Student No. is required" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%-- OPERATION BUTTONS --%>
            <div id="buttons">
                <div class="btn">
                    <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click1" Text="Insert" ValidationGroup="Insert" />
                </div>
                <div class="btn">
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" ValidationGroup="Update" />
                </div>
                <div class="btn">
                    <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" ValidationGroup="Delete" />
                </div>
            </div>
        </div>
    </form>

</body>

</html>
