using System;
using System.Data.SqlClient;

namespace Connect
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(localDB);Initial Catalog=Register; Initial Catalog=Try;Integrated Security=SSPI");
            conn.Open();
            string checkuser = "select count(*) from Register where username='" + txtUname.Text + "'";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("Student Already Exist");  
            }
             conn.Close();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection("Data Source=(localDB);Initial Catalog=Register;Integrated Security=SSPI");
                conn.Open();
                string insertQuery = "insert into Register(First Name,Last Name,Email,Date of Birth,Username,Password,Confirm)values (@firstname,@lastname,@email,@dateofbirth,@username,@password,@confirmpassword)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@firstname", txtFname.Text);
                cmd.Parameters.AddWithValue("@lastname", txtLname.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@dateofbirth", txtDbirth.Text);
                cmd.Parameters.AddWithValue("@username", txtUname.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@confirmpassword", txtCpassword.Text);


                cmd.ExecuteNonQuery();

                Response.Write(" registeration Successfull!!!thank you");

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}