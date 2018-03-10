using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangeGapfilling : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
        {
            Response.Redirect("login.aspx");
        }
        this.Label1.Text = Request.QueryString["id"];
        Button2.CausesValidation = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string subject = TextBox1.Text + "______" + TextBox2.Text;
        if (TextBox1.Text.Trim() == "" && TextBox2.Text.Trim() == "")
        {
            SqlHelper.MsgBox("请输入题目!", Page);
        }
        else
        {
            string sqlStr = "UPDATE gapfilling SET subject = '" + subject + "' WHERE id = '" + Label1.Text + "'";
            SqlHelper.GetExecuteNonQuery(sqlStr);
            Response.Redirect("Manage_Gapfilling.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Manage_Gapfilling.aspx");
    }
}