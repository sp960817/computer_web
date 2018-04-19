using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
public partial class ChangeJudge : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)//如果未登录则回到登录页面
        {
            Response.Redirect("login.aspx");
        }
        this.Label1.Text = Request.QueryString["id"];
        Button2.CausesValidation = false;
        if (!IsPostBack)
        {//获取初始题目
            string sqlStr = "SELECT * FROM JUDGE WHERE id = '" + Label1.Text + "'";
            MySqlDataReader dr = SqlHelper.GetExecuteReader(sqlStr);
            if (dr.Read())
            {
                TextBox1.Text = dr["subject"].ToString();
                DropDownList1.Text = dr["answer"].ToString();
            }
            dr.Close();
            SqlHelper.Closeconn();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)//更新数据库从而更改试题
    {
        string subject = TextBox1.Text;
        string sqlStr = "UPDATE judge SET subject = '" + subject + "',answer = '" + DropDownList1.SelectedValue + "'WHERE id = '" + Label1.Text + "'";
        SqlHelper.GetExecuteNonQuery(sqlStr);
        Response.Redirect("Manage_Judge.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Manage_Judge.aspx");
    }
}