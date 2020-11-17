<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="aggarwal.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" style="height: 166px">
                <tr>

                    <td>Name:</td>
                    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

                </tr>

                <tr>

                    <td>Email:</td>
                    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>

                </tr>

                <tr>

                    <td>Mobile no.:</td>
                    <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>

                </tr>

                <tr>

                    <td>Adress:</td>
                    <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>

                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Submit" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
