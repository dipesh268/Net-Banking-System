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



public partial class User_Mini_Statement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            //pdf create.....
            Response.ContentType = "Application/pdf";
            Response.AddHeader("content-Disposition", "attachement; filename=Detail.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            GridView2.Visible = true;
            GridView2.RenderControl(hw);
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
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
    //pdf create error handling...
    public override void VerifyRenderingInServerForm(Control control)
    {

    }
   
}