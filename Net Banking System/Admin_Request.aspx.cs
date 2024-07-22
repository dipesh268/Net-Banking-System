using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Request : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (GridView1.Visible==false)
        {
            Label11.Visible = true;
            Label11.Text = "No request are pending...";
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        try
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            CheckBox cb = (CheckBox)GridView1.Rows[rowind].FindControl("CheckBox1");
            if (cb.Checked == true)
            {
                Label1.Visible = true;
                TextBox1.Visible = true;
                Button1.Visible = true;
                Button2.Visible = true;
                TextBox1.Text = GridView1.Rows[rowind].Cells[1].Text;

            }
            else
            {
                TextBox1.Text = "";
                Label1.Visible = false;
                TextBox1.Visible = false;
                Button1.Visible = false;
                Button2.Visible = false;
            }
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
            SqlCommand cmd = new SqlCommand("UPDATE User_Master SET Status='Confirm' WHERE Email='" + TextBox1.Text + "'", con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Request Accepted successfully.......');", true);
            GridView1.DataBind();
            TextBox1.Text = "";
            Label1.Visible = false;
            TextBox1.Visible = false;
            Button1.Visible = false;
            Button2.Visible = false;
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
            SqlCommand cmd = new SqlCommand("DELETE FROM User_Master WHERE Email='" + TextBox1.Text + "'", con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Request Rejected successfully.......');", true);
            GridView1.DataBind();
            TextBox1.Text = "";
            Label1.Visible = false;
            TextBox1.Visible = false;
            Button1.Visible = false;
            Button2.Visible = false;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
       
    }
}