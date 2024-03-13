using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LoginV2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbErrorMessage.Visible = false;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            using(SqlConnection sqlcon = new SqlConnection (@"Data Source=IT-RD01;Initial Catalog=SchoolSysDB;Integrated Security=True;"))
            {
                sqlcon.Open();
                string query = "SELECT COUNT(1) FROM UserLogin WHERE Username=@username AND Password=@password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlcon);
                sqlCmd.Parameters.AddWithValue("@username", txtUsername.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());

                if(count == 1)
                {
                    Session["username"] = txtUsername.Text.Trim();
                    Response.Redirect("info.aspx");
                }
                else
                {
                    lbErrorMessage.Visible = true;
                }
            }
        }
    }
}