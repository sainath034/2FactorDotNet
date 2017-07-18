<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validate.aspx.cs" Inherits="_2FactAuthDotNet.Validate" %>

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
            <h2>Validate OTP</h2>
            <div class="form-group">
                <label for="email">OTP:</label>
                <asp:TextBox ID="txtQR" runat="server" type="number" class="form-control" placeholder="Enter OTP"></asp:TextBox>
            </div>
            <asp:Button ID="btnSubmit" runat="server" class="btn btn-default" Text="Validate" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblResponse" runat="server" CssClass="error"></asp:Label>
        </div>
    </form>
</body>
</html>
