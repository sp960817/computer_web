<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangeOnlyChoose.aspx.cs" Inherits="ChangeOnlyChoose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
        .style8
        {
            text-align: left;
        }
        .style9
        {
            text-align: right;
            width: 563px;
        }
        .style10
        {
            width: 563px;
        }
        .style11
        {
            text-align: right;
            width: 563px;
            height: 23px;
        }
        .style12
        {
            height: 23px;
            text-align: left;
        }
        .style13
        {
            text-align: right;
            width: 563px;
            height: 20px;
        }
        .style14
        {
            height: 20px;
            text-align: left;
        }
        .style15
        {
            text-align: right;
            width: 563px;
            height: 25px;
        }
        .style16
        {
            text-align: left;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style7">
        <tr>
            <td class="style13">
                您要更改的题号是：</td>
            <td class="style14">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11">
                更改后的题目是：</td>
            <td class="style12">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="必填项" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                A：</td>
            <td class="style12">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="必填项" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style15">
                B：</td>
            <td class="style16">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="必填项" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                C：</td>
            <td class="style8">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="必填项" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                D：</td>
            <td class="style8">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="必填项" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                答案：</td>
            <td class="style8">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>D</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="必填项" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="更改" />
                <asp:Button ID="Button2" runat="server" Text="返回" onclick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

