<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangeGapfilling.aspx.cs" Inherits="ChangeGapfilling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        width: 100%;
    }
    .style8
    {
        text-align: right;
        width: 609px;
        height: 20px;
    }
    .style9
    {
        width: 609px;
    }
    .style11
    {
        height: 20px;
        text-align: left;
    }
    .style12
    {
        text-align: left;
    }
    .style13
    {
        width: 609px;
        height: 22px;
        text-align: right;
    }
    .style14
    {
        text-align: left;
        height: 22px;
    }
    .style15
    {
        width: 609px;
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style7">
    <tr>
        <td class="style8">
            你要更改的填空题题号是</td>
        <td class="style11">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            号</td>
    </tr>
    <tr>
        <td class="style15">
            答案前的文字是：</td>
        <td class="style12">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8">
            答案后的文字是：</td>
        <td class="style11">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style13">
            答案：</td>
        <td class="style14">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="答案不能为空" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td class="style12">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="更改" />
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="返回" />
        </td>
    </tr>
</table>
</asp:Content>

