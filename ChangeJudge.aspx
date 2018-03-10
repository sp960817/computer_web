<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangeJudge.aspx.cs" Inherits="ChangeJudge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        width: 100%;
    }
    .style8
    {
        height: 20px;
        text-align: left;
    }
    .style9
    {
        text-align: right;
        width: 626px;
    }
    .style10
    {
        height: 20px;
        text-align: right;
        width: 626px;
    }
    .style11
    {
        width: 626px;
        height: 25px;
    }
    .style12
    {
        text-align: left;
    }
    .style13
    {
        text-align: left;
        height: 25px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style7">
    <tr>
        <td class="style9">
            您要更改的判断题题号是：</td>
        <td class="style12">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style10">
            更改后的题目内容：</td>
        <td class="style8">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="必填项" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            答案是：</td>
        <td class="style12">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>对</asp:ListItem>
                <asp:ListItem>错</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style11">
            </td>
        <td class="style13">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="更改" />
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="返回" />
        </td>
    </tr>
</table>
</asp:Content>

