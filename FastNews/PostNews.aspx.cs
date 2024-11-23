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
    public partial class PostNews : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection("server = DESKTOP - SGV7LJM; user id = sa; password=abc@123;database=Flashnews");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            SqlConnection Con = new SqlConnection("server =DESKTOP-SGV7LJM; user id =sa; password=abc@123;database=Flashnews");
            string query = "insert into News values(@P1,@P2,@P3)";
            SqlCommand cmd = new SqlCommand(query, Con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@P1", txtTitle.Text);
            cmd.Parameters.AddWithValue("@P2", txtContent.Text);
            cmd.Parameters.AddWithValue("@P3",DateTime.Now);

            Con.Open();
            cmd.ExecuteNonQuery();
            MessageBox.Show("Successfull");
            Response.Redirect("News.aspx");
            Con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}