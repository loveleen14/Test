<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="ADDPRODUCT.aspx.cs" Inherits="aggarwal.ADDPRODUCT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
               <asp:Image ID="Image1" runat="server" Height="121px" Width="124px" /></td>
           <td>
               <asp:FileUpload ID="FileUpload1" runat="server" />
           </td>
       </tr>
        <tr>
            <td colspan="2">

                <asp:Button ID="btnupload" runat="server" Text="upload" style="text-align: center" Width="405px" />
            </td>
        </tr>

         <tr>
            <td colspan="2">

                <asp:Button ID="btnsubmit" runat="server" Text="submit" Width="136px" />
            </td>
        </tr>

    </table>
</asp:Content>
