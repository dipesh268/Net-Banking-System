using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Account_dtl : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    int acc2, acc1;
    int account;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
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
                Button3.Visible = true;
                TextBox1.Text = GridView1.Rows[rowind].Cells[13].Text;
                account = Convert.ToInt32(TextBox1.Text);
                Session["upac"] = account;
            }
            else
            {
                Response.Redirect("Login.aspx");
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
            //pdf create.....
            Response.ContentType = "Application/pdf";
            Response.AddHeader("content-Disposition", "attachement; filename=Detail.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            DetailsView1.Visible = true;
            DetailsView1.RenderControl(hw);
            Document doc = new Document(PageSize.A4, 50f, 50f, 30f, 30f);
            HTMLWorker htw = new HTMLWorker(doc);
            PdfWriter.GetInstance(doc, Response.OutputStream);
            doc.Open();
            StringReader sr = new StringReader(sw.ToString());
            htw.Parse(sr);
            doc.Close();
            Response.Write(doc);
            Response.End();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
    //pdf create error handling...
    public override void VerifyRenderingInServerForm(Control control)
    {

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
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("Admin_User_Update_page.aspx");
    }
}