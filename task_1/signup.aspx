<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="task_1.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            height: 45px;
        }
        .auto-style10 {
            width: 234px;
            height: 53px;
        }
        .auto-style11 {
            width: 358px;
            height: 53px;
        }
        .auto-style12 {
            height: 53px;
        }
        .auto-style13 {
            width: 234px;
            height: 58px;
        }
        .auto-style14 {
            width: 358px;
            height: 58px;
        }
        .auto-style15 {
            height: 58px;
        }
        .auto-style16 {
            width: 234px;
            height: 55px;
        }
        .auto-style17 {
            width: 358px;
            height: 55px;
        }
        .auto-style18 {
            height: 55px;
        }
        .auto-style19 {
            width: 234px;
            height: 54px;
        }
        .auto-style20 {
            width: 358px;
            height: 54px;
        }
        .auto-style21 {
            height: 54px;
        }
        .auto-style22 {
            width: 234px;
            height: 57px;
        }
        .auto-style23 {
            width: 358px;
            height: 57px;
        }
        .auto-style24 {
            height: 57px;
        }
        .auto-style25 {
            width: 234px;
            height: 52px;
        }
        .auto-style26 {
            width: 358px;
            height: 52px;
        }
        .auto-style27 {
            height: 52px;
        }
        .auto-style28 {
            width: 234px;
            height: 50px;
        }
        .auto-style29 {
            width: 358px;
            height: 50px;
        }
        .auto-style30 {
            height: 50px;
        }
        .auto-style31 {
            height: 56px;
        }
        .auto-style32 {
            height: 40px;
        }
        .auto-style33 {
            height: 50px;
            width: 431px;
        }
        .auto-style34 {
            height: 52px;
            width: 431px;
        }
        .auto-style35 {
            height: 57px;
            width: 431px;
        }
        .auto-style36 {
            height: 54px;
            width: 431px;
        }
        .auto-style37 {
            height: 55px;
            width: 431px;
        }
        .auto-style38 {
            height: 58px;
            width: 431px;
        }
        .auto-style39 {
            height: 53px;
            width: 431px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style31" colspan="4">
                        <asp:Label ID="msgup1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000066" Text="Please Fill This Data"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">
                        <asp:Label ID="fn" runat="server" ForeColor="#000066" Text="First name"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style33">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style30">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">
                        <asp:Label ID="ln" runat="server" ForeColor="#000066" Text="last name"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style33"></td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="gender" runat="server" ForeColor="#000066" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" ForeColor="#000066" RepeatDirection="Horizontal">
                            <asp:ListItem Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style34"></td>
                    <td class="auto-style27">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:Label ID="country" runat="server" ForeColor="#000066" Text="Country"></asp:Label>
                    </td>
                    <td class="auto-style23">
                        <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="#000066">
                            <asp:ListItem>egypt</asp:ListItem>
                            <asp:ListItem>france</asp:ListItem>
                            <asp:ListItem>china</asp:ListItem>
                            <asp:ListItem>brazil</asp:ListItem>
                            <asp:ListItem>belgium</asp:ListItem>
                            <asp:ListItem>canada</asp:ListItem>
                            <asp:ListItem>italy</asp:ListItem>
                            <asp:ListItem>morocco</asp:ListItem>
                            <asp:ListItem>spain</asp:ListItem>
                            <asp:ListItem>united states</asp:ListItem>
                            <asp:ListItem>south africa</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style35"></td>
                    <td class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="ID" runat="server" ForeColor="#000066" Text="ID"></asp:Label>
                    </td>
                    <td class="auto-style20">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style36"></td>
                    <td class="auto-style21">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Label ID="email" runat="server" ForeColor="#000066" Text="email"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style37"></td>
                    <td class="auto-style18">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="password" runat="server" ForeColor="#000066" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style38"></td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="password_retry" runat="server" ForeColor="#000066" Text="Password retry"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style39"></td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="4">
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32" colspan="4">
                        <asp:Label ID="msgup2" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
