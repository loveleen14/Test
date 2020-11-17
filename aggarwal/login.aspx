<%@ Page Title="" Language="C#" MasterPageFile="~/custumer.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="aggarwal.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 361px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     
   

        <table align="center" border="3" style="height: 268px; background-color: #CCFF99">
           <td colspan="2">
               <asp:Image ID="Image1" runat="server" Height="161px" Width="451px" ImageUrl="~/img/download (2).jfif" /></td>
            <tr>
                <td>Name:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
            </tr>

             <tr>
                <td>Password:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtpass" runat="server" Height="20px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">

                    <asp:Button ID="Button1" runat="server" Text="Submit" Width="242px" OnClick="Button1_Click" />
                </td>
            </tr>
           
        </table>


   
</asp:Content>
