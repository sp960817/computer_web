<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Number.aspx.cs" Inherits="Manage_Number" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<table width="100%">
<tr>
    <td>
        
        单选题数量是</td>
    <td>
        
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        
    </td>
    <td>当前为<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td>
</tr>

<tr>
    <td>
        
        多选题数量是</td>
    <td>
        
        <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
        
    </td>
    <td>当前为<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </td>
</tr>
<tr>
    <td>
        
        填空题数量是</td>
    <td>
        
        <asp:DropDownList ID="DropDownList3" runat="server">
        </asp:DropDownList>
        
    </td>
    <td>当前为<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </td>
</tr>
<tr>
    <td>
        
        判断题数量是</td>
    <td>
        
        <asp:DropDownList ID="DropDownList4" runat="server">
        </asp:DropDownList>
        
    </td>
    <td>当前为<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </td>
</tr>
<tr>
    <td colspan="2">
        <asp:Button ID="Button1" runat="server" Text="确定更改" onclick="Button1_Click" />
        <asp:Button ID="Button2"
            runat="server" Text="返回" />
    </td>
    
</tr>
</table>
</asp:Content>

