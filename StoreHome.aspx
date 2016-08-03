using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class StoreHome : System.Web.UI.Page
{

    public SqlConnection storeConnection = new SqlConnection("add db connection ");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnTestCon_Click(object sender, EventArgs e)
    {
        storeConnection.Open();
        if ((storeConnection.State & ConnectionState.Open) > 0)
        {
            Response.Write("Connection OK!");
            storeConnection.Close();
        }
        else
        {
            Response.Write("Connection no good!");
        }
    }
}