using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //con.Open();
            //String str=Session["Email1"].ToString();
            //SqlCommand cmd = new SqlCommand("SELECT Admin_Name FROM Admin_Master WHERE Email=" + str + "", con);
            //SqlDataReader da = cmd.ExecuteReader();
            //da.Read();
            //Label1.Text = da[0].ToString();
            con.Open();
            String str = Session["Email1"].ToString();
            SqlCommand cmd = new SqlCommand("SELECT Admin_Name FROM Admin_Master WHERE Email='" + str + "'", con);
            SqlDataReader da = cmd.ExecuteReader();
            da.Read();
            Label1.Text = da[0].ToString();
            da.Close();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }    
        

    }
}