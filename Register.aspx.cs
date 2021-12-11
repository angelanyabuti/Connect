using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Connect
{
    public partial class Register : System.Web.UI.Page
    {
        private SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {

          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string connetionString;
            SqlConnection conn;

            connetionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Angela\OneDrive\Desktop\Connect\Connect\App_Data\Connect.mdf;Integrated Security=True";

            conn = new SqlConnection(connetionString);

            //writing sql query
           
            SqlCommand cmd = new SqlCommand("insert into Register (Id, First_name, Last_name, Email, Date_of_Birth, Username, Password, Confirm_password) values('"+txtid.Text+"','"+ txtfname.Text + "', '" + txtLname.Text + "','" + txtEmail.Text + "','" + txtDbirth.Text + "','" + txtUname.Text + "','" + txtfname.Text + "''" + txtPassword.Text + "','" + txtCPassword.Text + "')", conn);
            
            // Opening Connection
            conn.Open();
            //Executing the SQL query
            cmd.ExecuteNonQuery();
                {
                Console.WriteLine("Registration successful");
            }
            // Closing the connection
            conn.Close();
           
        }
    }
}