<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Judge.aspx.cs" Inherits="Manage_judge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        width: 100%;
    }
    .style8
    {
        width: 595px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style7">
    <tr>
        <td>
        </td>
        <td class="style8">
            <h3>
                判断题管理</h3>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td class="style8">
            <asp:GridView ID="GridView1" runat="server" Width="656px" 
                onrowdeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="题号" 
                        DataNavigateUrlFormatString="ChangeJudge.aspx?id={0}" Text="更改" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
               
            </asp:GridView>
        </td>
        <td>
        </td>
    </tr>
</table>
</asp:Content>

