using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class Add_Only_Choose : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)//如果未登录则回到登录页面
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string getMAX = "SELECT id FROM only_choose WHERE id = (SELECT MAX(id) FROM only_choose)";
        MySqlDataReader dr = SqlHelper.GetExecuteReader(getMAX);
        if (dr.Read())
        {
            int MAX = Convert.ToInt32(dr["id"].ToString());
            int ADDID = MAX + 1;
            dr.Close();
            string selectStr = "INSERT INTO only_choose VALUES ('" + ADDID + "','" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + TextBox3.Text.Trim() + "','" + TextBox4.Text.Trim() + "','" + TextBox5.Text.Trim() + "','" + DropDownList1.SelectedValue + "')";
            int a = SqlHelper.GetExecuteNonQuery(selectStr);
            if (a > 0)
            {
                SqlHelper.MsgBox("添加成功", Page);
            };
        }

        SqlHelper.Closeconn();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Manage_Only_Choose.aspx");
    }
}