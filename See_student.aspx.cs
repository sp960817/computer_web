using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class See_student : System.Web.UI.Page
{
    static string selectStr = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)//如果未登录则回到登录页面
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)//初始化显示学生目录
        {
            selectStr = "SELECT studentID AS 学号,name AS 姓名,class AS 班级,password AS 密码 FROM student";
            ShowStudent(selectStr);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)//显示全部
    {
        selectStr = "SELECT studentID AS 学号,name AS 姓名,class AS 班级,password AS 密码 FROM student";
        GridView1.PageIndex = 1;
        ShowStudent(selectStr);
    }
    private void ShowStudent(string seleStr)//通过SQL语句绑定GridView
    {
        DataSet ds = SqlHelper.GetDataSet(seleStr);
        GridView1.DataSource = ds;
        GridView1.AllowPaging = true;
        GridView1.DataKeyNames = new string[] { "学号" };
        GridView1.PageSize = 5;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string key = TextBox1.Text.Trim();
        if (key != "")
        {
            selectStr = "SELECT studentID AS 学号,name AS 姓名,class AS 班级,password AS 密码 FROM student ";
            selectStr += "WHERE studentID LIKE '%" + key + "%' ";
            selectStr += "OR name LIKE '%" + key + "%' ";
            selectStr += "OR class LIKE '%" + key + "%'";

        }
        else
        {
            selectStr = "SELECT studentID AS 学号,name AS 姓名,class AS 班级,password AS 密码 FROM student";
        }
        ShowStudent(selectStr);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentADD.aspx");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        ShowStudent(selectStr);
    }
}