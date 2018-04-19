using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Manage_Many_Choose : System.Web.UI.Page
{
    static string selectStr = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)//如果未登录则回到登录页面
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)//初始显示多选题目
        {
            selectStr = "SELECT id AS 题号,subject AS 题目,A,B,C,D,answer AS 答案 FROM many_choose";
            Show(selectStr);
        }
    }
    private void Show(string seleStr)//通过SQL语句绑定GridView
    {
        DataSet ds = SqlHelper.GetDataSet(seleStr);
        GridView1.DataSource = ds;
        GridView1.AllowPaging = true;
        GridView1.DataKeyNames = new string[] { "题号" };
        GridView1.PageSize = 15;
        GridView1.DataBind();
    }
}