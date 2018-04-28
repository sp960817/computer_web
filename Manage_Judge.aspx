<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Judge.aspx.cs" Inherits="Manage_judge" %>

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
                判断题管理</h3>
        </td>
    </tr>
    <tr>
        <td>
            <a href="Add_Judge.aspx">添加判断题</a>
        </td>    
        
    </tr>
    <tr>

        <td >
            <asp:GridView ID="GridView1" runat="server" Width="656px" 
                onrowdeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="题号" 
                        DataNavigateUrlFormatString="ChangeJudge.aspx?id={0}" Text="更改" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
               
            </asp:GridView>
        </td>

    </tr>
</table>
</asp:Content>

