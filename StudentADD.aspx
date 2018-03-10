<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentADD.aspx.cs" Inherits="StudentADD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
        .style8
        {
            text-align: right;
            width: 586px;
        }
        .style10
        {
            text-align: left;
        }
        .style11
        {
            text-align: right;
            width: 586px;
            height: 25px;
        }
        .style12
        {
            text-align: left;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h4>
        添加学生资料</h4>
    <table align="right" class="style7">
        <tr>
            <td class="style11">
                学号</td>
            <td class="style12">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="必填项" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="只能输入数字" 
                    ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                学生姓名</td>
            <td class="style10">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="必填项" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="只能填中文" 
                    ValidationExpression="[\u4E00-\u9FA5]+" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                班级</td>
            <td class="style10">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="必填项" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="只能填数字" 
                    ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                密码</td>
            <td class="style10">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                如果不填则为默认密码（123456）<asp:RegularExpressionValidator 
                    ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" 
                    Display="Dynamic" ErrorMessage="只能输入字母或数字" ForeColor="Red" 
                    ValidationExpression="[A-Za-z0-9]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确认添加" />
                <asp:Button ID="Button2" runat="server" Text="重新填写" onclick="Button2_Click" />
            </td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>

