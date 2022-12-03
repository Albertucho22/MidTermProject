using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class CreateUser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into [dbo].[User] values(" + i + ",'" + document.FileName + "','" + TextBox10.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','2022-1-30','" + TextBox4.Text + "','" + TextBox5.Text + "','2022-1-30','" + TextBox7.Text + "','" + image.FileName + "','" + TextBox8.Text + "','" + TextBox9.Text + "')", con);
            cmd.ExecuteNonQuery();
            i++;
            con.Close();
            Label1.Text = "Data has been inserted";
            GridView1.DataBind();
        }
    }
}