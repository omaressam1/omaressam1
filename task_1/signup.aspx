<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnsignup_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|datadirectory|data.mdf;Integrated Security = True";

        string strInsert = String.Format("INSERT INTO Student VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}')", txtfn.Text, txtln.Text, listgender.SelectedValue, listcounrty.SelectedValue, txtid.Text, txtemail.Text, txtpassword.Text);



        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
        try
        {
            conn.Open();

            cmdInsert.ExecuteNonQuery();

            conn.Close();

            msgup2.Text = "Your signed up is successful: " + txtfn.Text;
        }
        catch (SqlException err)
        {
            if (err.Number == 2627)
                msgup2.Text = "The ID " + txtid.Text + " already used, Please choose another !!";
            else
                msgup2.Text = "Database error, Please try later !!";
        }
         catch
        {
            msgup2.Text = "The system is not available at the moment, you may try later !!";
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style31 {
            height: 56px;
        }
        .auto-style40 {
            width: 234px;
            height: 6px;
        }
        .auto-style41 {
            width: 358px;
            height: 6px;
        }
        .auto-style42 {
            height: 6px;
            width: 431px;
        }
        .auto-style43 {
            height: 6px;
        }
        .auto-style44 {
            width: 234px;
        }
        .auto-style45 {
            width: 358px;
        }
        .auto-style46 {
            width: 431px;
        }
        .auto-style47 {
            width: 234px;
            height: 2px;
        }
        .auto-style48 {
            width: 358px;
            height: 2px;
        }
        .auto-style49 {
            width: 431px;
            height: 2px;
        }
        .auto-style50 {
            height: 2px;
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
                    <td class="auto-style40">
                        <asp:Label ID="lblfn" runat="server" ForeColor="#000066" Text="First name"></asp:Label>
                    </td>
                    <td class="auto-style41">
                        <asp:TextBox ID="txtfn" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style42">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfn" ErrorMessage="This is required falid" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style43">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtfn" ErrorMessage="Invalid First Name Format" ForeColor="#CC0000" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style44">
                        <asp:Label ID="lblln" runat="server" ForeColor="#000066" Text="last name"></asp:Label>
                    </td>
                    <td class="auto-style45">
                        <asp:TextBox ID="txtln" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style46">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtln" ErrorMessage="This is required falid" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtln" ErrorMessage="Invalid Last Name Format" ForeColor="#CC0000" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style44">
                        <asp:Label ID="lblgender" runat="server" ForeColor="#000066" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style45">
                        <asp:RadioButtonList ID="listgender" runat="server" ForeColor="#000066" RepeatDirection="Horizontal">
                            <asp:ListItem Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style46">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="listgender" ErrorMessage="This is required falid" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style44">
                        <asp:Label ID="lblcountry" runat="server" ForeColor="#000066" Text="Country"></asp:Label>
                    </td>
                    <td class="auto-style45">
                        <asp:DropDownList ID="listcounrty" runat="server" ForeColor="#000066">
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
                    <td class="auto-style46">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="listcounrty" ErrorMessage="This is required falid" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style44">
                        <asp:Label ID="lblID" runat="server" ForeColor="#000066" Text="ID"></asp:Label>
                    </td>
                    <td class="auto-style45">
                        <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style46">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtid" ErrorMessage="This is required falid" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtid" ErrorMessage="Invalid Student Id Format" ForeColor="#CC0000" ValidationExpression="[2][0]\d{6}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style44">
                        <asp:Label ID="lblemail" runat="server" ForeColor="#000066" Text="email"></asp:Label>
                    </td>
                    <td class="auto-style45">
                        <asp:TextBox ID="txtemail" runat="server" ></asp:TextBox>
                    </td>
                    <td class="auto-style46">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemail" ErrorMessage="This is required falid" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style44">
                        <asp:Label ID="lblpassword" runat="server" ForeColor="#000066" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style45">
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style46">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpassword" ErrorMessage="This is required falid" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtpassword" ErrorMessage="Invalid First Password Format" ForeColor="#CC0000" ValidationExpression="\w{6,14}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style47">
                        <asp:Label ID="lblconfirm_password" runat="server" ForeColor="#000066" Text="confirm Password "></asp:Label>
                    </td>
                    <td class="auto-style48">
                        <asp:TextBox ID="txtconfirmpassword" runat="server" style="height: 25px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style49">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtconfirmpassword" ErrorMessage="This is required falid" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style50">
                        </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Button ID="btnsignup" runat="server" Text="Sign Up" OnClick="btnsignup_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="msgup2" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
