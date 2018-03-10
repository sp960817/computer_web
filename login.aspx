<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <title>后台登录</title>
    <link  href="css\Admin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #loginwarp
        {
            /*登录对话框区*/
            width: 420px;
            height: 263px;
            margin-top: 80px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 0;
        }
        #login_middle
        {
            background: #FFF url(Images/login_middle.jpg) no-repeat left top;
            height: 145px;
            width: 419px;
        }
        .button
        {
            border: 1px #1E5494 solid;
            height: 23px;
            width: 60px;
            line-height: 20px;
            background-color: #B8D3F1;
        }
        .style1
        {
            text-align: right;
            width: 100px;
            height: 20px;
        }
        .style2
        {
            width: 150px;
            text-align: left;
            height: 20px;
        }
        .style3
        {
            width: 250px;
            text-align: left;
            height: 20px;
        }
        .style5
        {
            width: 80px;
            height: 20px;
        }
        .style6
        {
            height: 20px;
            text-align: left;
        }
        .style7
        {
            width: 414px;
        }
        .style8
        {
            text-align: left;
            width: 100px;
            height: 20px;
        }
        .style10
        {
            width: 80px;
            height: 20px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <!--页面层容器-->
        <div id="header">
            <!--页面头部-->
        </div>
        <div id="content" style="background-color: #4499ee" class="tdleft">
            <!--页面主体-->
            <div id="loginwarp" class="tdleft">
                <div class="tdleft">
                    <img alt="" src="Images/login_top.jpg" style="width: 419px; height: 95px;" /></div>
                <!--图片如果不放到DIV中，图片底边有空白-->
                <div id="login_middle">
                    <table cellpadding="0" cellspacing="0" class="style7">
                        <tr class="td_left" style="width: 413px">
                            <td class="style1">
                            </td>
                            <td class="style2" colspan="2">
                                <span class="style1">管理员后台登录</span>
                            </td>
                            <td class="style3">
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                账号：
                            </td>
                            <td class="style2" colspan="2">
                               <asp:TextBox ID="txtAdminName" runat="server" Width="150px" BorderColor="#27B3FE" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                            </td>
                            <td class="style3">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAdminName"
                                Display="Dynamic" ErrorMessage="“管理员”必须输入！" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAdminName"
                            Display="Dynamic" ErrorMessage="只能输入字母和(或)数字！" 
                                    ValidationExpression="[A-Za-z0-9]+$" ForeColor="Red"></asp:RegularExpressionValidator><!--“管理员”必须输入！只能输入字母和(或)数字！-->
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                密码：
                            </td>
                            <td class="style2" colspan="2">
                                <asp:TextBox ID="txtAdminPassword" runat="server" TextMode="Password" Width="150px" BorderColor="#27B3FE" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                            </td>
                            <td class="style3">
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdminPassword"
                                Display="Dynamic" ErrorMessage="“密码”必须输入！" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtAdminPassword"
                            Display="Dynamic" ErrorMessage="只能输入字母和(或)数字！" 
                                    ValidationExpression="[A-Za-z0-9]+$" ForeColor="Red"></asp:RegularExpressionValidator> <!--“密码”必须输入！只能输入字母和(或)数字！-->
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                验证码：
                            </td>
                            <td style="text-align: left;" class="style5">
                                <asp:TextBox ID="txtValidateCode" runat="server" Width="70px" Height="20px" 
                                    BorderColor="#27B3FE" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                            </td>
                            <td class="style10">
                                <img alt="看不清，请单击我！" src="ValidateCode.aspx" style="cursor: hand; width: 52px;
                                    height: 14px; float: left;" onclick="this.src=this.src+'?'" /></td>
                            <td class="style6">
                                <!--图片要放在单独的单元格中，否则图片底边靠上-->
                            &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="tdleft" >
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;
                            </td>
                            <td class="style2" colspan="2">
                                <asp:Button ID="btnOK" runat="server" Text="登录" OnClick="btnOK_Click" CssClass="button" />&nbsp;
                                <asp:Button ID="btnReset" runat="server" Text="重置" OnClick="btnReset_Click" 
                                    CssClass="button" CausesValidation="False" />
                               
                            </td>
                            <td class="style3">
                            </td>
                        </tr>
                    </table>
                </div>
                <img alt="" src="Images/login_bottom.jpg" style="width: 419px; height: 16" />
            </div>
        </div>
        <div id="footer" style="color: White">
        </div>
    </div>
    </form>
</body>
</html>

