using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_dtl_account : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        
        
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        try
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            CheckBox cb = (CheckBox)GridView1.Rows[rowind].FindControl("CheckBox2");
            if (cb.Checked == true)
            {

                Label1.Visible = true;
                TextBox1.Visible = true;
                Button2.Visible = true;

                TextBox1.Text = GridView1.Rows[rowind].Cells[1].Text;


            }
            else
            {
                TextBox1.Text = "";
                Label1.Visible = false;
                TextBox1.Visible = false;

                Button2.Visible = false;
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        try
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            CheckBox cb = (CheckBox)GridView1.Rows[rowind].FindControl("CheckBox3");
            if (cb.Checked == true)
            {

                Label1.Visible = true;
                TextBox1.Visible = true;
                Button2.Visible = true;

                TextBox1.Text = GridView1.Rows[rowind].Cells[1].Text;


            }
            else
            {
                TextBox1.Text = "";
                Label1.Visible = false;
                TextBox1.Visible = false;

                Button2.Visible = false;
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM Account_Master WHERE Account_no='" + TextBox1.Text + "'", con);
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("DELETE FROM User_Master WHERE Account_no='" + TextBox1.Text + "'", con);
            cmd1.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Delete successfully.......');", true);
            GridView1.DataBind();
            TextBox1.Text = "";
            Label1.Visible = false;
            TextBox1.Visible = false;
            GridView1.DataBind();
            GridView2.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
}