<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Gapfilling.aspx.cs" Inherits="Manage_Gapfilling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        width: 100%;
    }
    .style8
    {
        width: 646px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style7">
    <tr>
        <td colspan="3">
            <h3>
                填空题管理</h3>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style8">
            <asp:GridView ID="GridView1" runat="server" Width="665px">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="题号" 
                        DataNavigateUrlFormatString="ChangeGapfilling.aspx?id={0}" HeaderText="更改" 
                        Text="更改" />
                </Columns>
            </asp:GridView>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

