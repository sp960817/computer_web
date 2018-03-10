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
        if (Session["AdminName"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            selectStr = "SELECT testID AS 试卷编号,studentID AS 学号,name AS 姓名,gapfilling AS 填空成绩,judge AS 判断成绩,only_choose AS 单选成绩, many_choose AS 多选成绩,grade AS 总成绩 FROM grade";
            ShowGrade(selectStr);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    private void ShowGrade(string seleStr)
    {
        DataSet ds = SqlHelper.GetDataSet(seleStr);
        GridView1.DataSource = ds;
        GridView1.AllowPaging = true;
        GridView1.DataKeyNames = new string[] { "试卷编号" };
        GridView1.PageSize = 5;
        GridView1.DataBind();
    }
}