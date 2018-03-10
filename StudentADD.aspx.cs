using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentADD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
        {
            Response.Redirect("login.aspx");
        }
        TextBox1.Focus();
        Button2.CausesValidation = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string sqlStr = "SELECT count(*) FROM student WHERE studentID = '" + TextBox1.Text.Trim() + "'";
            int i = Convert.ToInt32(SqlHelper.GetExecuteScalar(sqlStr));
            if(i>0)
            {
                SqlHelper.MsgBox("该学号已经存在！",Page);
                return;
            }
            else
            {
                if (TextBox4.Text.Trim() == "")
                {
                    string Mpassword = "123456";
                    string sqlStr1 = "INSERT INTO student (studentID,name,class,password)VALUES('" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + TextBox3.Text.Trim() + "','" + Mpassword + "')";
                    SqlHelper.GetExecuteNonQuery(sqlStr1);
                    SqlHelper.MsgBox("添加成功", Page);

                    Response.Redirect("See_student.aspx");
                                    }
                else
                {
                    string sqlStr2 = "INSERT INTO student (studentID,name,class,password)VALUES('" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + TextBox3.Text.Trim() + "','" + TextBox4.Text.Trim() + "')";
                    SqlHelper.GetExecuteNonQuery(sqlStr2);
                    SqlHelper.MsgBox("添加成功", Page);
                    Response.Redirect("See_student.aspx");
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = null;
        TextBox2.Text = null;
        TextBox3.Text = null;
        TextBox4.Text = null;
    }
}