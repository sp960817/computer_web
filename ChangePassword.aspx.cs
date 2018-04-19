using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Web.Security;
public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)//更新数据库从而改变试题
        {
            Response.Redirect("login.aspx");
        }
        TextBox2.CausesValidation = false;
    }
    protected void Button1_Click(object sender, EventArgs e)//更新数据库更改密码 **密码用MD5加密
    {
        string adminName = Session["AdminName"].ToString();
        string adminPassowrd = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "MD5");
        string sqlstr = "UPDATE Admin SET AdminPassword = '"+adminPassowrd+"' WHERE AdminName = '"+adminName+"'";
        SqlHelper.GetExecuteNonQuery(sqlstr);
        SqlHelper.MsgBox("成功", Page);

    }
}