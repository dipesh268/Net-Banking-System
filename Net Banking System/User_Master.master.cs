using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try {
            if (!IsPostBack)
            {
                if (Session["Email"] == null)
                {

                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    Label2.Text = "Welcome,<br>  " + Session["Act_no"].ToString();
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}
