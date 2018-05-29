using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;
using System.Web.Configuration;
public partial class Manage_Number : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null)//如果未登录则回到登录页面
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            string judge = "SELECT id FROM judge WHERE id<>(SELECT MAX(id) FROM judge)";
            string gapfilling = "SELECT id FROM gapfilling WHERE id<>(SELECT MAX(id) FROM gapfilling)";
            string onlychoose = "SELECT id FROM only_choose WHERE id<>(SELECT MAX(id) FROM only_choose)";
            string manychoose = "SELECT id FROM many_choose WHERE id<>(SELECT MAX(id) FROM many_choose)";
        Getn(judge, DropDownList4);
        Getn(gapfilling, DropDownList3);
        Getn(onlychoose, DropDownList1);
        Getn(manychoose, DropDownList2);
        }
        getnow();


        
    }
    private void getnow() {
        string mysql = "SELECT * FROM test_number";
        MySqlDataReader dr = SqlHelper.GetExecuteReader(mysql);
        if (dr.Read())
        {
            Label1.Text = dr["only_choose"].ToString();
            Label2.Text = dr["many_choose"].ToString();
            Label3.Text = dr["gapfilling"].ToString();
            Label4.Text = dr["judge"].ToString();
            dr.Close();
            SqlHelper.Closeconn();
        }
    }
    private void Getn(string GetNumber, DropDownList DropDownList1) 
    {
        MySqlConnection conn = new MySqlConnection();
        MySqlCommand cmd = new MySqlCommand();
        string constr = ConfigurationManager.ConnectionStrings["DBL"].ConnectionString.ToString();
        conn.ConnectionString = constr;
        cmd.Connection = conn;
        conn.Open();
        MySqlDataAdapter mda = new MySqlDataAdapter(GetNumber, conn);
        DataSet ds = new DataSet();
        mda.Fill(ds, "id");
        DropDownList1.DataSource = ds.Tables["id"].DefaultView;
        DropDownList1.DataTextField = ds.Tables["id"].Columns[0].ColumnName;
        DropDownList1.DataValueField = ds.Tables["id"].Columns[0].ColumnName;
        DropDownList1.DataBind();
        SqlHelper.Closeconn();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string oc = DropDownList1.SelectedValue;
        string mc = DropDownList2.SelectedValue;
        string judge = DropDownList4.SelectedValue;
        string gapfilling = DropDownList3.SelectedValue;
        string mysql = "UPDATE test_number SET judge ='" + judge + "',many_choose ='" + mc + "',only_choose= '" + oc + "',gapfilling = '" + gapfilling + "' WHERE id= '1'";
        int j = SqlHelper.GetExecuteNonQuery(mysql);
        if (j > 0)
        {
            SqlHelper.MsgBox("修改题目数量成功",Page);
            getnow();
        }
        else {
            SqlHelper.MsgBox("修改题目数量失败", Page);
        }
    }
}