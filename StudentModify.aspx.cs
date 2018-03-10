using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class StudentModify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            string id = Request.QueryString["id"];
            string sqlStr = "SELECT * FROM student WHERE studentID = '" + id + "'";
            MySqlDataReader dr = SqlHelper.GetDataReader(sqlStr);
            if (dr.Read())
            {
                TextBox1.Text = dr["studentID"].ToString();
                TextBox2.Text = dr["name"].ToString();
                TextBox3.Text = dr["class"].ToString();
            }
            dr.Close();
            SqlHelper.Closeconn();
            Button2.CausesValidation = false;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string id = Request.QueryString["id"];
            if (TextBox1.Text != id)
            {
                string sqlStr = "SELECT count(*) FROM student WHERE studentID = '" + TextBox1.Text.Trim() + "'";
                int i = Convert.ToInt32(SqlHelper.GetExecuteScalar(sqlStr));
                if (i > 0)
                {
                    SqlHelper.MsgBox("该学号已经存在！", Page);
                    return;
                }
                else
                {
                    if (TextBox4.Text.Trim() == "")
                    {
                        string sqlStr1 = "UPDATE  student SET studentID='" + TextBox1.Text.Trim() + "',name='" + TextBox2.Text.Trim() + "',class='" + TextBox3.Text.Trim() + "' ";
                        sqlStr1 += "WHERE studentID = '" + id + "'";
                        SqlHelper.GetExecuteNonQuery(sqlStr1);
                        SqlHelper.MsgBox("修改成功", Page);

                        Response.Redirect("See_student.aspx");
                    }
                    else
                    {
                        string sqlStr2 = "UPDATE student SET studentID = '" + TextBox1.Text.Trim() + "',name = '" + TextBox2.Text.Trim() + "',";
                        sqlStr2 += "class ='" + TextBox3.Text.Trim() + "',password='" + TextBox4.Text.Trim() + "' ";
                        sqlStr2 += "WHERE studentID = '" + id + "'";
                        SqlHelper.GetExecuteNonQuery(sqlStr2);
                        SqlHelper.MsgBox("修改成功", Page);
                        Response.Redirect("See_student.aspx");
                    }
                }
            }
            else
            {
                if (TextBox4.Text.Trim() == "")
                {
                    string sqlStr1 = "UPDATE  student SET studentID='" + TextBox1.Text.Trim() + "',name='" + TextBox2.Text.Trim() + "',class='" + TextBox3.Text.Trim() + "' ";
                    sqlStr1 += "WHERE studentID = '" + id + "'";
                    SqlHelper.GetExecuteNonQuery(sqlStr1);
                    SqlHelper.MsgBox("修改成功", Page);

                    Response.Redirect("See_student.aspx");
                }
                else
                {
                    string sqlStr2 = "UPDATE student SET studentID = '" + TextBox1.Text.Trim() + "',name = '" + TextBox2.Text.Trim() + "',";
                    sqlStr2 += "class ='" + TextBox3.Text.Trim() + "',password='" + TextBox4.Text.Trim() + "' ";
                    sqlStr2 += "WHERE studentID = '" + id + "'";
                    SqlHelper.GetExecuteNonQuery(sqlStr2);
                    SqlHelper.MsgBox("修改成功", Page);
                    Response.Redirect("See_student.aspx");
                }
            }
            
           
            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("See_student.aspx");
    }
}