<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentModify.aspx.cs" Inherits="StudentModify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
        .style8
        {
            text-align: right;
            height: 20px;
            width: 461px;
        }
        .style9
        {
            height: 20px;
            text-align: left;
        }
        .style10
        {
            text-align: right;
            width: 461px;
        }
        .style11
        {
            text-align: left;
        }
        .style12
        {
            text-align: right;
            width: 461px;
            height: 25px;
        }
        .style13
        {
            text-align: left;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        修改学生信息</p>
    <table class="style7">
        <tr>
            <td class="style8" dir="ltr">
                学号：</td>
            <td class="style9">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="必填项" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="只能输入数字" ForeColor="Red" 
                    ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
                姓名：</td>
            <td class="style11">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="必填项" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="只能输入中文" ForeColor="Red" 
                    ValidationExpression="[\u4E00-\u9FA5]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style12">
                班级：</td>
            <td class="style13">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="必填项" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="只能输入数字" 
                    ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                密码：</td>
            <td class="style9">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="只能输入字母或密码" ForeColor="Red" 
                    ValidationExpression="[A-Za-z0-9]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确认修改" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="返回" />
            </td>
        </tr>
    </table>
</asp:Content>

