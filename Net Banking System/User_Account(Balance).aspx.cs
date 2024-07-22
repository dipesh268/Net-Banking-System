using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    int val;
    protected void Page_Load(object sender, EventArgs e)
    {

            
            try
            {
                con.Open();
                String str = Session["Email"].ToString();
                SqlCommand cmd = new SqlCommand("SELECT * FROM User_Master WHERE Email='" + str + "'", con);
                SqlDataReader da = cmd.ExecuteReader();

                while (da.Read())
                {
                    Label11.Text = da.GetValue(0).ToString();
                    String s1, s2;
                    s1 = da.GetValue(1).ToString();
                    s2 = da.GetValue(2).ToString();
                    String s3 = s1 + " " + s2;
                    Label3.Text = s3;
                    Label4.Text = da.GetValue(3).ToString();
                    val = Convert.ToInt32(da.GetValue(12).ToString());
                    Session["no"] = da.GetValue(0).ToString();
                }
                da.Close();
                Session["Act_no"] = val;
                SqlCommand cmd1 = new SqlCommand("SELECT * FROM Account_Master WHERE Account_no=" + val + "", con);
                SqlDataReader da1 = cmd1.ExecuteReader();
                while (da1.Read())
                {
                    Label8.Text = da1.GetValue(0).ToString();
                    Label10.Text = da1.GetValue(4).ToString();
                    Label1.Text = da1.GetValue(1).ToString();
                    Label2.Text = da1.GetValue(0).ToString();
                    Label5.Text = da1.GetValue(3).ToString();
                    Label6.Text = da1.GetValue(4).ToString();
                }
                da1.Close();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Transaction.aspx");
    }
}