<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Only_Choose.aspx.cs" Inherits="Only_Choose" %>

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
        <td colspan="3">
            <h3>
                管理单选题</h3>
        </td>
    </tr>
        <tr>
        <td>
            <a href="Add_Only_Choose.aspx">添加单选题</a>
        </td>
    </tr>
    <tr>
        
        <td colspan="3" align="center">
            <asp:GridView ID="GridView1" runat="server" CssClass="style10" Width="665px"
            onrowdeleting="GridView1_RowDeleting" AllowPaging="True"  
                onpageindexchanging="GridView1_PageIndexChanging"  PageSize="5">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="题号" 
                        DataNavigateUrlFormatString="ChangeOnlyChoose.aspx?id={0}" Text="更改" />
                        <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </td>

    </tr>
</table>
</asp:Content>

