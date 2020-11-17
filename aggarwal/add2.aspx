<%@ Page Title="" Language="C#" MasterPageFile="~/admin2.Master" AutoEventWireup="true" CodeBehind="add2.aspx.cs" Inherits="aggarwal.add2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            background-color: #FF3399;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h1 class="auto-style1">ADD PRODUCT</h1>

    <table align="center" style="border: thick double #000000; background-color: #CCFF33">
         <tr>
           <td>
              product name</td>
           <td>
               <asp:TextBox ID="txtproname" runat="server"></asp:TextBox>
           </td>
       </tr>


         <tr>
           <td>
               product price</td>
           <td>
               <asp:TextBox ID="txtproprice" runat="server"></asp:TextBox>
           </td>
       </tr>




















       <tr>
           <td>
               <asp:Image ID="imgproduct" runat="server" Height="121px" Width="124px" /></td>
           <td>
               <asp:FileUpload ID="fuimg" runat="server" />
           </td>
       </tr>
        <tr>
            <td colspan="2">

                <asp:Button ID="btnupload" runat="server" Text="upload" style="text-align: center" Width="405px" OnClick="btnupload_Click" />
            </td>
        </tr>

         <tr>
            <td colspan="2">

                <asp:Button ID="btnsubmit" runat="server" Text="submit" Width="136px" OnClick="btnsubmit_Click" />
            </td>
        </tr>

    </table>
</asp:Content>
