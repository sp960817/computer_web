﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Manage_Gapfilling : System.Web.UI.Page
{
    static string selectStr = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["AdminName"] == null)
            {
                Response.Redirect("login.aspx");
            }
            if (!IsPostBack)
            {
                selectStr = "SELECT id AS 题号,subject AS 题目,answer AS 答案 FROM gapfilling";
                ShowGapfilling(selectStr);
            }
        }
    }
    private void ShowGapfilling(string seleStr)
    {
        DataSet ds = SqlHelper.GetDataSet(seleStr);
        GridView1.DataSource = ds;
        GridView1.AllowPaging = true;
        GridView1.DataKeyNames = new string[] { "题号" };
        GridView1.PageSize = 10;
        GridView1.DataBind();
    }

}