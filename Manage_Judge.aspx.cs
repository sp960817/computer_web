using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
public partial class Manage_judge : System.Web.UI.Page
{
    static string selectStr = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)//如果未登录则回到登录页面
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            if (!IsPostBack)//初始显示判断题
            {
                selectStr = "SELECT id AS 题号,subject AS 题目,answer AS 答案 FROM judge";
                Show(selectStr);
            }
        }

    }
    private void Show(string seleStr)//通过SQL语句绑定GridView
    {
        DataSet ds = SqlHelper.GetDataSet(seleStr);
        GridView1.DataSource = ds;
        GridView1.DataKeyNames = new string[] { "题号" };
        GridView1.DataBind();
    }

    
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string mysql = "SELECT judge FROM test_number";
        MySqlDataReader dr = SqlHelper.GetExecuteReader(mysql);
        if (dr.Read())
        {
            int n = Convert.ToInt32(dr["judge"].ToString());
            dr.Close();
            string sql1 = "SELECT id FROM judge WHERE id = (SELECT MAX(id) FROM judge)";
            dr = SqlHelper.GetExecuteReader(sql1);
            if (dr.Read())
            {
                int MAX = Convert.ToInt32(dr["id"].ToString());
                dr.Close();
                if (MAX > n+1)
                {
                    dele(e);
                }
                else
                {
                    SqlHelper.MsgBox("题目数量低于出题数量，不可删除", Page);
                    SqlHelper.Closeconn();
                }
            }
            else
            {
                dr.Close();
                SqlHelper.Closeconn();
            }
        }
        else
        {
            dr.Close();
            SqlHelper.Closeconn();
        }
    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        selectStr = "SELECT id AS 题号,subject AS 题目,answer AS 答案 FROM judge";
        Show(selectStr);
    }
    private void dele(GridViewDeleteEventArgs e)
    {
        string idid = GridView1.DataKeys[e.RowIndex].Value.ToString();
        int id = Convert.ToInt32(idid);
        string mysql = "DELETE FROM judge WHERE id ='" + id + "'";
        int ll = SqlHelper.GetExecuteNonQuery(mysql);
        if (ll > 0)
        {
            string getMAX = "SELECT id FROM judge WHERE id = (SELECT MAX(id) FROM judge)";
            MySqlDataReader dr = SqlHelper.GetExecuteReader(getMAX);
            if (dr.Read())
            {
                int MAX = Convert.ToInt32(dr["id"].ToString());
                dr.Close();
                for (int j = id + 1; j <= MAX; j++)
                {
                    string upid = "UPDATE judge SET id = id-1 WHERE id = '" + j + "'";
                    SqlHelper.GetExecuteNonQuery(upid);
                }
                selectStr = "SELECT id AS 题号,subject AS 题目,answer AS 答案 FROM judge";
                Show(selectStr);
                SqlHelper.MsgBox("删除成功", Page);
            }

            SqlHelper.Closeconn();
        }
        else
        {
            SqlHelper.MsgBox("删除失败，请刷新", Page);
        }
    }
}