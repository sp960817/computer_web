<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Grade.aspx.cs" Inherits="Grade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
        .style8
        {
            width: 650px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style7">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style8">
                按照学生id或者考试时间查找<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="查找" />
                <asp:Button ID="Button2" runat="server" Text="按时间显示" />
                <asp:Button ID="Button3" runat="server" Text="显示全部" />
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style8">
                <asp:GridView ID="GridView1" runat="server" Width="756px">
                </asp:GridView>
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

