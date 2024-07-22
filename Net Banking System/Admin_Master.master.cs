using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (Session["Email1"] == null)
                {

                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    Label2.Text = "Welcome, <br>   Admin";
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
           
        
        
    }
}
