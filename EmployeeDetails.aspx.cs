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
    public partial class EmployeeDetails : System.Web.UI.Page
    {
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadRecord();
            }
        }
        SqlConnection con= new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Angela\OneDrive\Desktop\Connect\Connect\App_Data\Connect.mdf;Integrated Security=True");

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            //writing sql query

            SqlCommand cmd = new SqlCommand("insert into Employee (EmpId, Full_names, Email, Mobile_no, Address, Date_of_Join,Department, Basic_salary, Tax, Net_pay, Gross_pay, Deductions, Overtime) values('" + txtEid.Text + "','" + txtFnames.Text + "', '" + txtEmail.Text + "', '" + txtEnumber.Text + "','" + txtAddress.Text + "' ,'"+ txtDjoin.Text + "','" + txtDep.Text + "', '" + txtBsalary.Text + "', '" + txtTax.Text + "', '" + txtNpay.Text + "', '" + txtGpay.Text + "', '" + txtDeductions.Text + "', '" + txtOtime.Text + "')", con);

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
            SqlCommand cmd = new SqlCommand("select * from Employee", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            //writing sql query

            SqlCommand cmd = new SqlCommand("update Employee (EmpId, Full_names, Email, Mobile_no, Address, Date_of_Join,Department) set Full_names = '" + txtFnames.Text + "',Email = '" + txtEmail.Text + "',Mobile_no = '" + txtEnumber.Text + "', Address = '" + txtAddress.Text + "', Date_of_Join= '" + txtDjoin.Text + "',Department = '" + txtDep.Text + "' where EmpID = '" + txtEid + "'", con);

            // Opening Connection
            con.Open();
            //Executing the SQL query
            cmd.ExecuteNonQuery( );
            con.Close();
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully updated');", true);
            }
            // Closing the connection

            LoadRecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //writing sql query

            SqlCommand cmd = new SqlCommand("Delete Employee (EmpId, Full_names, Email, Mobile_no, Address, Date_of_Join,Department)  where EmpID = '" + txtEid + "'", con);

            // Opening Connection
            con.Open();
            //Executing the SQL query
                        cmd.ExecuteNonQuery( );

            con.Close();
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully deleted');", true);
            }
            // Closing the connection

            LoadRecord();
        }
        //search button
        protected void Button4_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("select * from Employee where EmpID = '" + int.Parse(txtEid.Text) + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void txtGpay_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            double gross, deductions, net, basic, tax, overtime;

            basic = Double.Parse(txtBsalary.Text);
            overtime = Double.Parse(txtOtime.Text);
            gross = basic + overtime;
            txtGpay.Text = string.Format("{0:C0}", gross);
            tax = (gross * 10) / 100;
           // txtTax.Text = string.Format("{0:C0}", tax);
            deductions = tax;
           // txtDeductions.Text = string.Format("{0:C0}", deductions);
            net = gross - deductions;
           // txtNpay.Text = string.Format("{0:C0}", net);

        }
    }
}