<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
protected void login_Click(object sender, EventArgs e)
        {
          
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|data.mdf;Integrated Security=True";

          
            string strSelect = "SELECT * FROM student " + " WHERE Student Id = '" + studentId.Text + "' AND Password = '" + password.Text + "'";
           
            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);
        
            SqlDataReader reader;
   
            conn.Open();

            reader = cmdSelect.ExecuteReader();

            if (reader.Read())
                msg.Text = "User Found !!!";
            else
                msg.Text = "User Not Found !!!";

            conn.Close();
        }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 319px;
            height: 55px;
        }
        .auto-style3 {
            height: 74px;
        }
        .auto-style4 {
            width: 319px;
            height: 58px;
        }
        .auto-style5 {
            height: 58px;
        }
        .auto-style6 {
            height: 55px;
        }
        .auto-style7 {
            height: 65px;
        }
        .auto-style8 {
            height: 49px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000066" Text="Sign In Form"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" BackColor="White" BorderColor="White" ForeColor="#000066" Text="student Id"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="studentId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" BackColor="White" ForeColor="#000066" Text="password"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">
                        <asp:Button ID="login" runat="server" OnClick="login_Click" Text="Login" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2">
                        <asp:Label ID="msg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
