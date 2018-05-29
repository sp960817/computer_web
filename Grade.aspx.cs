using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Grade : System.Web.UI.Page
{
    static string selectStr = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)//如果未登录则回到登录页面
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)//初始显示成绩
        {
            selectStr = "SELECT testID AS 试卷编号,studentID AS 学号,name AS 姓名,gapfilling AS 填空成绩,judge AS 判断成绩,only_choose AS 单选成绩, many_choose AS 多选成绩,grade AS 总成绩 FROM grade";
            ShowGrade(selectStr);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)//模糊查询
    {
        string mm = TextBox1.Text;
        selectStr = "SELECT testID AS 试卷编号,studentID AS 学号,name AS 姓名,gapfilling AS 填空成绩,judge AS 判断成绩,only_choose AS 单选成绩, many_choose AS 多选成绩,grade AS 总成绩 FROM grade WHERE studentID = '"+mm+"' OR testID LIKE '%"+mm+"%' ORDER BY testID DESC";
        ShowGrade(selectStr);
    }
    private void ShowGrade(string seleStr)//通过sql语句变更GridView
    {
        DataSet ds = SqlHelper.GetDataSet(seleStr);
        GridView1.DataSource = ds;
        GridView1.AllowPaging = true;
        GridView1.DataKeyNames = new string[] { "试卷编号" };
        GridView1.PageSize = 15;
        GridView1.DataBind();
    }
    
    protected void Button3_Click(object sender, EventArgs e)//显示全部数据
    {
        selectStr = "SELECT testID AS 试卷编号,studentID AS 学号,name AS 姓名,gapfilling AS 填空成绩,judge AS 判断成绩,only_choose AS 单选成绩, many_choose AS 多选成绩,grade AS 总成绩 FROM grade";
        ShowGrade(selectStr);
    }
    protected void Button2_Click(object sender, EventArgs e)//按照时间降序排列
    {
        string mm = TextBox1.Text;
        selectStr = "SELECT testID AS 试卷编号,studentID AS 学号,name AS 姓名,gapfilling AS 填空成绩,judge AS 判断成绩,only_choose AS 单选成绩, many_choose AS 多选成绩,grade AS 总成绩 FROM grade ORDER BY testID DESC";
        ShowGrade(selectStr);
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        selectStr = "SELECT testID AS 试卷编号,studentID AS 学号,name AS 姓名,gapfilling AS 填空成绩,judge AS 判断成绩,only_choose AS 单选成绩, many_choose AS 多选成绩,grade AS 总成绩 FROM grade";
        ShowGrade(selectStr);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string mysql = "DELETE FROM grade";
        int ll =SqlHelper.GetExecuteNonQuery(mysql);
        if (ll > 0)
        {
            SqlHelper.MsgBox("清除成功", Page);
            selectStr = "SELECT testID AS 试卷编号,studentID AS 学号,name AS 姓名,gapfilling AS 填空成绩,judge AS 判断成绩,only_choose AS 单选成绩, many_choose AS 多选成绩,grade AS 总成绩 FROM grade";
            ShowGrade(selectStr);
        }
    }
}