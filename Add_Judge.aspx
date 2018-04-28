<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Judge.aspx.cs" Inherits="Add_Judge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style7">
    <tr>
        <td >
            添加题目的内容：</td>
        <td >
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="必填项" 
                ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td >
            答案是：</td>
        <td >
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="Y">对</asp:ListItem>
                <asp:ListItem Value="N">错</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="添加" 
                ValidationGroup="1" />
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="返回" />
        </td>
    </tr>
    </table>
</asp:Content>

