using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class ChangeManyChoose : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)
        {
            Response.Redirect("login.aspx");
        }
        this.Label1.Text = Request.QueryString["id"];
        Button2.CausesValidation = false;
        if (!IsPostBack)
        {
            string sqlStr = "SELECT * FROM many_choose WHERE id = '" + Label1.Text + "'";
            MySqlDataReader dr = SqlHelper.GetExecuteReader(sqlStr);
            if (dr.Read())
            { 
                TextBox1.Text = dr["subject"].ToString();
                TextBox2.Text = dr["A"].ToString();
                TextBox3.Text = dr["B"].ToString();
                TextBox4.Text = dr["C"].ToString();
                TextBox5.Text = dr["D"].ToString();
                TextBox6.Text = dr["answer"].ToString();
            }
            dr.Close();
            SqlHelper.Closeconn();
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        { 
            string subject = TextBox1.Text;
            string sqlStr = "UPDATE many_choose SET subject = '" + subject + "',A = '"+TextBox2.Text+"',B='"+TextBox3.Text+"'";
            sqlStr += ",C='" + TextBox4.Text + "',D='" + TextBox5.Text + "',answer = '" + TextBox6.Text.Trim() + "' ";
            sqlStr += "WHERE id = '" + Label1.Text + "'";
            SqlHelper.GetExecuteNonQuery(sqlStr);
            Response.Redirect("Manage_Many_Choose.aspx");
        }
        
    }
}