using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace FastNews
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection Con;
        SqlCommand cmd;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new SqlConnection("Server=desktop-sgv7ljm;user id=sa;password=abc@123;database=flashnews");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string query = "Insert into flashusers values(@P1,@P2,@P3,@P4,@P5,@P6)";
            cmd = new SqlCommand(query, Con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@P1", txtFName.Text);
            cmd.Parameters.AddWithValue("@P2", txtLName.Text);
            cmd.Parameters.AddWithValue("@P3", txtUName.Text);
            cmd.Parameters.AddWithValue("@P4", txtEMail.Text);
            cmd.Parameters.AddWithValue("@P5", txtMobile.Text);
            cmd.Parameters.AddWithValue("@P6", txtPassword.Text);
            
            Con.Open();
            cmd.ExecuteNonQuery();
            Con.Close();
            MessageBox.Show("Registered successfully");
        }
    }
}