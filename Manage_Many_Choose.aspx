<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Many_Choose.aspx.cs" Inherits="Manage_Many_Choose" %>

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
            <h3>
                管理多选题</h3>
        </td>
    </tr>
    <tr>
        <td>
            <a href="Add_Many_Choose.aspx">添加多选题</a>
        </td>
    </tr>
    <tr>

        <td>
            <asp:GridView ID="GridView1" runat="server" CssClass="style10" Width="665px" 
                onrowdeleting="GridView1_RowDeleting" AllowPaging="True" 
                onpageindexchanging="GridView1_PageIndexChanging1" PageSize="3">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="题号" 
                        DataNavigateUrlFormatString="ChangeManyChoose.aspx?id={0}" Text="更改" />
                        <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </td>

    </tr>
</table>
</asp:Content>

