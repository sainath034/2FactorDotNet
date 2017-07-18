<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_2FactAuthDotNet.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Login</h2>
            <div class="form-group">
                <label for="email">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" type="email" class="form-control" placeholder="Enter email"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" type="password" class="form-control" placeholder="Enter password"></asp:TextBox>
            </div>
            <asp:Button ID="btnSubmit" runat="server" class="btn btn-default" Text="Submit" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblMessage" runat="server" CssClass="error"></asp:Label>
        </div>
    </form>
</body>
</html>
