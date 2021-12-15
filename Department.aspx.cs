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
    public partial class Department : System.Web.UI.Page
    {
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Angela\OneDrive\Desktop\Connect\Connect\App_Data\Connect.mdf;Integrated Security=True");


        protected void Button1_Click(object sender, EventArgs e)
        {
            //writing sql query

            SqlCommand cmd = new SqlCommand("insert into Department (DepID,Depname,Salary) values('" + txtDid.Text + "','" + txtDname.Text + "', '" +txtSalary.Text + "')", con);

            // Opening Connection
            con.Open();
            //Executing the SQL query
            cmd.ExecuteNonQuery();
            con.Close();
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully inserted');", true);
            }
            // Closing the connection

            LoadRecord();
        }
        void LoadRecord()

        {
            SqlCommand cmd = new SqlCommand("select * from Department", con);
        SqlDataAdapter d = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Department where DepID = '" + int.Parse(txtDid.Text) + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}