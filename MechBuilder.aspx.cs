using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace J_Dimension
{
    public partial class MechBuilder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection thisConnection = new SqlConnection("Server=pss017.win.hostgator.com;Database=servire_mechproject;User Id=mechuser;Password=Battletech1;");
            thisConnection.Open();
            SqlCommand thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "SELECT count(*) from test;";
            SqlDataReader thisReader = thisCommand.ExecuteReader();
            string a = "";
            while (thisReader.Read())
            {
                a = thisReader[0].ToString();
            }

            Response.Write(a);
           
        }
    }
}