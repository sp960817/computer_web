﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangeGapfilling.aspx.cs" Inherits="ChangeGapfilling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style7">
    <tr>
        <td >
            你要更改的填空题题号是</td>
        <td >
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            号</td>
    </tr>
    <tr>
        <td >
            答案前的文字是：</td>
        <td >
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td >
            答案后的文字是：</td>
        <td >
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td >
            答案：</td>
        <td >
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="答案不能为空" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>

        <td  colspan="2">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="更改" />
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="返回" />
        </td>
    </tr>
</table>
</asp:Content>

