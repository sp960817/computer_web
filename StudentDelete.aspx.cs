using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];
        string sqlStr = "DELETE FROM student WHERE studentID = '" + id + "'";
        SqlHelper.GetExecuteNonQuery(sqlStr);
        Response.Redirect("See_student.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("See_student.aspx");
    }
}