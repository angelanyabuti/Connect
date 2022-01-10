using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Connect
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection conn;

            connetionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Angela\OneDrive\Desktop\Connect\Connect\App_Data\Connect.mdf;Integrated Security=True";

            conn = new SqlConnection(connetionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from Register where Username='" + txtUname.Text + "' and Password ='" + txtPassword.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("EmployeeDetails.aspx");
            }
            else
            {
                Response.Write("<script>alert('Please enter valid Username and Password')</script>");
            }

        }
    }
}