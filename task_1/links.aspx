<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="links.aspx.cs" Inherits="task_1.links" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 442px;
        }
        .auto-style4 {
            width: 450px;
        }
    </style>
</head>
<body bgcolor="#000060">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" NavigateUrl="~/signup.aspx" Target="F3">Sign Up</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" ForeColor="White" NavigateUrl="~/signin.aspx" Target="F3">Sign In</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
