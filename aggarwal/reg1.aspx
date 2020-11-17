<%@ Page Title="" Language="C#" MasterPageFile="~/custumer.Master" AutoEventWireup="true" CodeBehind="reg1.aspx.cs" Inherits="aggarwal.reg1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     
        
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>

     
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style1"> WELCOME  TO REGISTRATION PAGE</h1>
    <table align="center" style="height: 166px; font-weight: 700; background-color: #00FFFF;" border="3">
                <tr>

                    <td>Name:</td>
                    <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>

                </tr>



         <tr>

                    <td>Password:</td>
                    <td><asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox></td>

                </tr>
                <tr>

                    <td>Email:</td>
                    <td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>

                </tr>

                <tr>

                    <td>Mobile no.:</td>
                    <td><asp:TextBox ID="txtmobile" runat="server"></asp:TextBox></td>

                </tr>

                <tr>

                    <td>Adress:</td>
                    <td><asp:TextBox ID="txtaddress" runat="server"></asp:TextBox></td>

                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" style="color: #000000; font-weight: 700; background-color: #66FF33" Width="268px" /></td>
                </tr>
            </table>

    <asp:Label ID="Label1" runat="server" Text="Label" Height="100px" style="margin-left: 314px" Width="793px"></asp:Label>
</asp:Content>
