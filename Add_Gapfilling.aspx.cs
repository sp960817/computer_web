using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class Add_Gapfilling : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)//如果未登录则回到登录页面
        {
            Response.Redirect("login.aspx");
        } 
        Button2.CausesValidation = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string subject = TextBox1.Text + "______" + TextBox2.Text;
        string answer = TextBox3.Text;
        string getMAX = "SELECT id FROM gapfilling WHERE id = (SELECT MAX(id) FROM gapfilling)";
        MySqlDataReader dr = SqlHelper.GetExecuteReader(getMAX);
        if (dr.Read())
        {
            int MAX = Convert.ToInt32(dr["id"].ToString());
            int ADDID = MAX + 1;
            dr.Close();
            string selectStr = "INSERT INTO gapfilling VALUES ('"+ADDID+"','"+subject+"','"+answer+"')";
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
        Response.Redirect("Manage_Gapfilling.aspx");
    }
}