using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

public partial class Admin_Transaction_Report : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox2.Text == "")
            {
                //pdf create.....
                Response.ContentType = "Application/pdf";
                Response.AddHeader("content-Disposition", "attachement; filename=Detail.pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                StringWriter sw = new StringWriter();
                HtmlTextWriter hw = new HtmlTextWriter(sw);

                GridView3.Visible = true;
                GridView3.RenderControl(hw);
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
            else
            {
                //pdf create.....
                Response.ContentType = "Application/pdf";
                Response.AddHeader("content-Disposition", "attachement; filename=Detail.pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                StringWriter sw = new StringWriter();
                HtmlTextWriter hw = new HtmlTextWriter(sw);

                GridView4.Visible = true;
                GridView4.RenderControl(hw);
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
    
}