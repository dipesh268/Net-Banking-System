using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_add_money : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    int acc2, acc1;
    int tran;
    protected void Page_Load(object sender, EventArgs e)
    {

        con.Open();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            acc2 = Convert.ToInt32(TextBox1.Text);
            SqlCommand cmd = new SqlCommand("SELECT * FROM User_Master WHERE Account_no=" + acc2 + "", con);
            SqlDataReader da = cmd.ExecuteReader();
            while (da.Read())
            {
                String s1, s2;
                s1 = da.GetValue(1).ToString();
                s2 = da.GetValue(2).ToString();
                String s3 = s1 + " " + s2;
                TextBox2.Text = s3.ToString();
            }
            da.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox4.Text == TextBox5.Text)
            {


                acc2 = Convert.ToInt32(TextBox1.Text);
                String str = Session["Email1"].ToString();
                SqlCommand cmd = new SqlCommand("Select * from Admin_Master where Email='" + str + "' and password='" + TextBox4.Text + "'", con);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);



                if (dt1.Rows.Count > 0)
                {

                    SqlCommand cmd2 = new SqlCommand("SELECT Current_Balance FROM Account_Master WHERE Account_no=" + acc2 + "", con);
                    SqlDataReader da = cmd2.ExecuteReader();
                    da.Read();
                    int money1 = Convert.ToInt32(da[0]);
                    int tra1 = Convert.ToInt32(TextBox3.Text);
                    int total2 = money1 + tra1;

                    da.Close();
                    SqlCommand cmd3 = new SqlCommand("UPDATE Account_Master SET Current_Balance=" + total2 + " WHERE Account_no=" + acc2 + "", con);

                    cmd3.ExecuteNonQuery();
                    SqlCommand cm = new SqlCommand("select max(tran_id) from tran_Master", con);
                    SqlDataReader dr = cm.ExecuteReader();
                    dr.Read();
                    tran = Convert.ToInt32(dr[0]);
                    tran++;
                    dr.Close();

                    String date = System.DateTime.Now.ToString("yyyy-MM-dd");
                    string str5 = "Transfer from Admin";
                    int Account1 = 1000000001;
                    String month = System.DateTime.Now.ToString("MMMM");
                    SqlCommand cmd4 = new SqlCommand("INSERT INTO Tran_Master VALUES(" + tran + ",'" + str5 + "'," + Account1 + "," + acc2 + "," + TextBox3.Text + ",'" + date + "','" + month + "')", con);
                    cmd4.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Transfer Successfully....');", true);
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
}