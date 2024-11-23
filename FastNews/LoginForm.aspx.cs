using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;

namespace FastNews
{
    public partial class LoginForm : System.Web.UI.Page
    {
        SqlConnection Con= new SqlConnection("server=desktop-sgv7ljm;user id=sa;password=abc@123;database=flashnews");
        public static string userName;
        public static string Password;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtUName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
          
        //string userName=txtUName.Text;
        //string Password=txtPassword.Text;
        SqlConnection Con = new SqlConnection("server=desktop-sgv7ljm;user id=sa;password=abc@123;database=flashnews");
            string query = "select * from flashusers where uname=@P1 and password=@P2";
            SqlCommand cmd = new SqlCommand(query, Con);
            cmd.CommandType = CommandType.Text;
            userName=txtUName.Text;
            Password=txtPassword.Text;
            cmd.Parameters.AddWithValue("@P1",txtUName.Text);
            cmd.Parameters.AddWithValue("@P2",txtPassword.Text);
            Con.Open();
            SqlDataReader DR = cmd.ExecuteReader();
            if(DR.Read())

            {
                MessageBox.Show("Login Success");
                Response.Redirect("News.aspx");
             
              

              
            }
            else
            {
                MessageBox.Show("Login Failed");
              
            }
            Con.Close();


           

        }
    }
}