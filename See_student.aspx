<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="See_student.aspx.cs" Inherits="See_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <table class="style7">
            <tr>
                <td colspan="3">
                    查找学生姓名、Id、班级<asp:TextBox ID="TextBox1" runat="server" style="width: 148px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="查找" onclick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="显示全部" onclick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="添加学生信息" />
                </td>
            </tr>
            <tr>
                <td >
                </td>
                <td dir="ltr" class="style9">
                    <asp:GridView ID="GridView1" runat="server" 
                        BorderColor="Black" Width="565px" 
                        onpageindexchanging="GridView1_PageIndexChanging">
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="学号"
                             DataNavigateUrlFormatString="StudentModify.aspx?id={0}"
                              HeaderText="修改" Text="修改"/>
                              <asp:HyperLinkField DataNavigateUrlFields="学号"
                             DataNavigateUrlFormatString="StudentDelete.aspx?id={0}"
                              HeaderText="删除" Text="删除"/>
                        </Columns>
                    </asp:GridView>
                </td>
                <td>
                </td>
            </tr>
        </table>
</asp:Content>

