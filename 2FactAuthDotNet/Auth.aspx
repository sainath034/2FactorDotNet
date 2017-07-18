<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Auth.aspx.cs" Inherits="_2FactAuthDotNet.Auth" %>

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
            <h2>QR Code</h2>
            <p>Scan the QR using <a href="https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=en" target="_blank">Google Authenticator App</a></p>
            <div class="row">
                <div class="col-md-4">
                    <div class="thumbnail">
                        <asp:Image ID="imgQR" runat="server" />
                        <div class="caption">
                            <asp:HyperLink ID="lblCode" runat="server" NavigateUrl="~/Validate.aspx"></asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
