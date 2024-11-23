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
    public partial class News : System.Web.UI.Page
    {
        SqlConnection Con;
        SqlCommand cmd;
        //public static string UName { set; get; }
        //public static string password { set; get; }
        protected void Page_Load(object sender, EventArgs e)
        {
            string Constring = "Server=desktop-sgv7ljm;user id=sa;password=abc@123;database=flashnews";
            Con = new SqlConnection(Constring);
            SqlDataAdapter DA = new SqlDataAdapter("SELECT * FROM News", Con);
            DataSet Ds = new DataSet();
            DA.Fill(Ds, "aLL");
            DataList1.DataSource = Ds.Tables[0];
            DataList1.DataBind();

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            string Constring = "Server=desktop-sgv7ljm;user id=sa;password=abc@123;database=flashnews";
            string query = "select * from FlashUsers where UName=@P1 and password=@P2";
            Con = new SqlConnection(Constring);
            cmd = new SqlCommand(query, Con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@P1", LoginForm.userName);
            cmd.Parameters.AddWithValue("@P2", LoginForm.Password);
            if ((LoginForm.userName == null) || (LoginForm.Password == null))
            {
                MessageBox.Show("Please Register to Post News");
                Response.Redirect("Register.aspx");
            }
          
          

            else
                Con.Open();
            int R = cmd.ExecuteNonQuery();
            Response.Redirect("PostNews.aspx");


            Con.Close();
        }
       
    }
}